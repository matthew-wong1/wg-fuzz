struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<i32> {
    let var_0 = select(vec4<bool>(true, true, any(vec3<bool>(-1232f >= arg_0.x, true, 4294967295u < u_input.b.x)), !all(vec4<bool>(true, false, true, true))), select(!vec4<bool>(any(vec3<bool>(false, false, false)), true, true, any(vec4<bool>(true, false, true, false))), !vec4<bool>(any(vec4<bool>(false, false, false, true)), true, all(vec4<bool>(true, false, true, true)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, false, true))), select(select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(true, false, true, true), true), !vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, true), vec4<bool>(false, true | (4294967295u > u_input.b.x), !(-537f != arg_0.x), all(vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), firstTrailingBit(vec2<i32>(1i, -31639i)), ~(-vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), _wgslsmith_add_vec2_i32(abs(u_input.a.xy & ~vec2<i32>(0i, 23413i)), reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(18261i, u_input.a.x), u_input.a.xx), u_input.a.zx))), abs(vec2<i32>(u_input.a.x, -2147483647i)), true, Struct_1(reverseBits(-u_input.a.x), vec2<i32>(firstTrailingBit(1i), u_input.a.x), firstTrailingBit(~vec3<i32>(5996i, -2147483647i, u_input.a.x))));
    var var_2 = false;
    var_1 = Struct_2(Struct_1(~(i32(-1i) * -27160i), vec2<i32>(0i, u_input.a.x), select(var_1.e.c, -vec3<i32>(-1i, var_1.a.b.x, -1i), vec3<bool>(all(var_0.xww), true, var_0.x))), var_1.e.b, abs(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, var_1.b.x, -1i), vec4<i32>(-9586i, -1i, u_input.a.x, 1i)), vec4<i32>(u_input.a.x, var_1.e.c.x, var_1.a.c.x, -1i)), _wgslsmith_div_i32(~u_input.a.x, 0i))), 2061f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-934f, arg_0.x))), var_1.e);
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, ~u_input.a.x, var_1.b.x, u_input.a.x), abs(vec4<i32>(var_1.e.c.x & var_1.a.c.x, _wgslsmith_mult_i32(-23303i, 56968i), var_1.c.x, ~var_1.c.x))), u_input.a.zx, -u_input.a);
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-(var_3.a << (u_input.b.x % 32u)), firstTrailingBit(~var_3.b.x), 1i, -2147483647i), ~vec4<i32>(28531i >> (u_input.b.x % 32u), abs(0i), 0i, var_3.a)), var_1.c.x, -33314i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    return vec2<bool>(any(!select(vec2<bool>(arg_2.d, false), vec2<bool>(arg_2.d, arg_2.d), !vec2<bool>(true, arg_2.d))), any(select(!vec3<bool>(arg_2.d, true, true), select(vec3<bool>(arg_2.d, arg_2.d, false), select(vec3<bool>(true, false, arg_2.d), vec3<bool>(arg_2.d, true, false), vec3<bool>(false, false, arg_2.d)), arg_2.d), select(select(vec3<bool>(arg_2.d, arg_2.d, arg_2.d), vec3<bool>(arg_2.d, arg_2.d, arg_2.d), vec3<bool>(true, arg_2.d, arg_2.d)), select(vec3<bool>(arg_2.d, arg_2.d, false), vec3<bool>(false, true, true), arg_2.d), vec3<bool>(true, false, false)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(select(vec2<bool>(true, true), func_4(-57023i, Struct_1(1i, vec2<i32>(-37396i, arg_0.c.x), func_3(vec4<f32>(1291f, -428f, 235f, 1628f))), Struct_2(arg_1, arg_0.b, vec2<i32>(2147483647i, 11425i), any(vec3<bool>(true, false, true)), Struct_1(arg_1.c.x, vec2<i32>(arg_1.a, 1i), vec3<i32>(0i, -1i, -20011i))), Struct_1(-u_input.a.x, vec2<i32>(u_input.a.x, arg_0.a), ~u_input.a)), !func_4(firstTrailingBit(33636i), Struct_1(u_input.a.x, vec2<i32>(1i, -1i), arg_1.c), Struct_2(arg_1, arg_0.c.yz, vec2<i32>(arg_1.a, -2147483647i), false, arg_1), Struct_1(6411i, vec2<i32>(arg_0.b.x, 4496i), arg_0.c))), vec2<bool>(true, true), select(!func_4(u_input.a.x, Struct_1(17981i, vec2<i32>(arg_0.b.x, -30921i), vec3<i32>(1i, arg_1.a, -5872i)), Struct_2(Struct_1(arg_1.c.x, arg_1.b, vec3<i32>(u_input.a.x, 1i, -35458i)), arg_1.b, vec2<i32>(arg_0.b.x, arg_0.b.x), false, Struct_1(2147483647i, vec2<i32>(arg_0.b.x, u_input.a.x), vec3<i32>(arg_1.a, -21726i, 1i))), Struct_1(-40635i, vec2<i32>(-15907i, -57204i), u_input.a)), vec2<bool>(all(vec2<bool>(true, true)), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), func_4(44601i, Struct_1(-1i, arg_1.c.yy, vec3<i32>(arg_0.a, 56725i, 2147483647i)), Struct_2(arg_1, vec2<i32>(-60566i, u_input.a.x), u_input.a.xz, true, Struct_1(-17714i, vec2<i32>(arg_1.b.x, arg_1.a), vec3<i32>(-24423i, -1i, u_input.a.x))), arg_1).x)));
    let var_1 = Struct_2(arg_1, u_input.a.xy, arg_0.b, var_0.x, arg_1);
    var var_2 = select(!vec3<bool>(true, any(vec2<bool>(var_1.d, true)), arg_0.a <= _wgslsmith_add_i32(1i, -31836i)), vec3<bool>(var_1.d, any(select(vec4<bool>(var_1.d, var_1.d, true, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, var_1.d, var_0.x, false)))), (60175i != reverseBits(arg_1.c.x)) && all(vec4<bool>(false, false, var_0.x, var_0.x))), !select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_1.d, var_1.d), vec3<bool>(false, var_1.d, var_0.x))), !(!vec3<bool>(var_1.d, var_1.d, true)), vec3<bool>(var_0.x, any(vec4<bool>(true, true, true, var_0.x)), any(vec3<bool>(var_1.d, false, false)))));
    var var_3 = Struct_2(arg_0, var_1.e.b & (arg_0.b << (select(vec2<u32>(1u, 50435u) << (vec2<u32>(16163u, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, u_input.b.x) | u_input.b.yx, select(false, false, var_2.x)) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, ~arg_0.a), ~(arg_0.c.zy ^ arg_0.c.xx) & _wgslsmith_sub_vec2_i32(-var_1.a.c.xx, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 36919i), var_1.b))), func_4(~_wgslsmith_sub_i32(u_input.a.x | arg_0.c.x, max(2147483647i, arg_1.c.x)), Struct_1(-u_input.a.x, arg_1.c.yx, vec3<i32>(-64867i, 2147483647i, ~(-2147483647i))), var_1, Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(-18921i, 1i), _wgslsmith_sub_i32(-48008i, arg_0.c.x)), _wgslsmith_clamp_vec2_i32(u_input.a.zx ^ vec2<i32>(1i, -45852i), vec2<i32>(arg_0.b.x, 4423i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-11673i, var_1.e.c.x))), _wgslsmith_mult_vec3_i32(arg_0.c, ~vec3<i32>(8718i, arg_0.b.x, 1i)))).x, var_1.a);
    var_3 = var_1;
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -937f))) + 565f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f))))));
    let var_1 = arg_2.x;
    var_0 = _wgslsmith_f_op_f32(ceil(-2250f));
    let var_2 = _wgslsmith_clamp_vec3_i32(-u_input.a, -_wgslsmith_mult_vec3_i32(~vec3<i32>(-20338i, -2147483647i, u_input.a.x), vec3<i32>(arg_3.c.x, 2147483647i, arg_1.b.x)), ~abs(reverseBits(arg_3.c))) >> (select(u_input.b, _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, 107531u), vec3<u32>(19128u, u_input.b.x, 23732u), u_input.b) ^ ~_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(20304u, u_input.b.x, u_input.b.x)), !arg_2.ywy) % vec3<u32>(32u));
    let var_3 = Struct_2(func_2(Struct_1(-(~arg_1.c.x), _wgslsmith_sub_vec2_i32(arg_3.c.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a.c.x, 2147483647i), arg_1.a.c.yy)), vec3<i32>(arg_0.c.x, 1i, -15064i)), func_2(func_2(arg_0.a, func_2(Struct_1(arg_1.c.x, arg_1.a.b, arg_1.a.c), Struct_1(var_2.x, vec2<i32>(2586i, var_2.x), vec3<i32>(arg_3.a, 75i, -18840i)))), Struct_1(min(u_input.a.x, 17898i), vec2<i32>(-13008i, arg_0.a.b.x), firstLeadingBit(vec3<i32>(2147483647i, arg_3.c.x, -5980i))))), vec2<i32>(-2147483647i, firstTrailingBit(_wgslsmith_add_i32(1i, arg_3.a)) << (~abs(u_input.b.x) % 32u)), select(vec2<i32>(func_3(vec4<f32>(-1102f, -444f, 726f, -958f)).x << (reverseBits(32711u) % 32u), var_2.x), var_2.xy, any(func_4(arg_1.e.a << (u_input.b.x % 32u), func_2(Struct_1(u_input.a.x, arg_1.e.c.zx, vec3<i32>(0i, -56i, arg_3.a)), Struct_1(-2147483647i, vec2<i32>(arg_1.e.c.x, 0i), arg_1.e.c)), Struct_2(Struct_1(-1i, vec2<i32>(u_input.a.x, -9943i), arg_1.a.c), arg_3.c.xy, arg_0.b, true, arg_0.a), Struct_1(1i, arg_0.c, arg_1.e.c)))), arg_1.d, func_2(arg_1.e, Struct_1(~abs(arg_0.a.c.x), select(vec2<i32>(-63570i, arg_1.b.x), countOneBits(var_2.xx), false), abs(vec3<i32>(arg_0.c.x, var_2.x, var_2.x) & arg_3.c))));
    return func_2(Struct_1(~2147483647i, arg_3.b, select(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_2.x, arg_3.c.x), var_2), select(countOneBits(vec3<i32>(-13384i, -7731i, var_2.x)), vec3<i32>(-10758i, 33919i, var_3.c.x), arg_2.yww), vec3<bool>(all(arg_2.xy), true, !arg_1.d))), Struct_1(-29693i, arg_1.c, -vec3<i32>(arg_0.e.c.x | arg_3.b.x, 1i, countOneBits(1i))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-575f, 1002f, 1136f, 1704f), vec4<f32>(-218f, 1015f, 214f, 352f)) * vec4<f32>(1075f, -1066f, 1000f, 1622f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1271f, 357f, -1000f, -435f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-740f, 1237f, 645f, -3015f), vec4<f32>(916f, 1545f, 998f, -2482f), arg_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(933f, 908f, 167f, -334f)) - vec4<f32>(-1690f, 2004f, 245f, 1999f)))), vec4<bool>(arg_0.d, true, true, !(!(true && arg_0.d)))));
    var var_1 = Struct_2(func_2(Struct_1(-4201i, ~arg_2.b, vec3<i32>(func_2(Struct_1(-22293i, u_input.a.zy, vec3<i32>(-24844i, u_input.a.x, arg_0.c.x)), Struct_1(0i, vec2<i32>(1i, 1i), arg_0.e.c)).b.x, _wgslsmith_clamp_i32(u_input.a.x, arg_2.c.x, arg_2.c.x), 0i << (u_input.b.x % 32u))), Struct_1(1i, ~select(vec2<i32>(2147483647i, arg_2.c.x), arg_0.c, arg_1), vec3<i32>(0i, -arg_2.c.x, -1i))), vec2<i32>(u_input.a.x << (u_input.b.x % 32u), _wgslsmith_div_i32(-3313i, -2147483647i | ~u_input.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-27543i, arg_2.c.x), (arg_2.c.xy >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) << (reverseBits(u_input.b.zx) % vec2<u32>(32u)), vec2<i32>(arg_2.a, arg_2.a)) | vec2<i32>(0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.a, u_input.a.x, -1i, arg_2.a), vec4<i32>(0i, 24412i, u_input.a.x, -6265i)), ~u_input.a.x), any(!(!select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, arg_0.d, true), vec3<bool>(arg_0.d, true, arg_1.x)))), func_5(Struct_2(arg_0.e, -(~vec2<i32>(0i, 1i)), arg_2.c.zz, !(!arg_1.x), func_2(func_5(Struct_2(arg_2, arg_2.b, u_input.a.xx, false, Struct_1(2147483647i, vec2<i32>(u_input.a.x, arg_2.b.x), vec3<i32>(arg_2.b.x, -1i, arg_0.a.a))), Struct_2(Struct_1(arg_2.c.x, vec2<i32>(-15698i, 1i), vec3<i32>(-8126i, -3615i, -56275i)), vec2<i32>(u_input.a.x, 0i), u_input.a.xy, arg_1.x, Struct_1(arg_2.c.x, arg_2.c.zx, u_input.a)), vec4<bool>(arg_1.x, false, arg_1.x, false), arg_0.e), arg_2)), arg_0, !select(select(vec4<bool>(false, arg_1.x, false, false), vec4<bool>(true, arg_1.x, arg_0.d, true), false), !vec4<bool>(false, arg_1.x, arg_1.x, arg_0.d), select(vec4<bool>(true, arg_0.d, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_0.d, arg_0.d), vec4<bool>(true, true, arg_0.d, arg_0.d))), Struct_1(u_input.a.x, ~(~vec2<i32>(39898i, u_input.a.x)), -func_2(arg_0.e, arg_0.e).c)));
    var var_2 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, ~u_input.b.x, 4502u | u_input.b.x, ~u_input.b.x), vec4<u32>(0u, ~u_input.b.x, ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x))));
    var var_3 = arg_0;
    var var_4 = select(vec3<bool>(var_0.x < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1197f, -751f)))), func_4(-28981i, var_3.a, arg_0, var_3.a).x, (var_3.c.x >> (~u_input.b.x % 32u)) >= -40103i), select(!(!vec3<bool>(var_1.d, arg_0.d, arg_0.d)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(arg_1.x, false, false), vec3<bool>(true, true, arg_1.x)), var_1.d), vec3<bool>(var_3.d, true, var_0.x != 349f), select(select(vec3<bool>(var_3.d, false, arg_0.d), vec3<bool>(true, var_1.d, arg_0.d), arg_1.x), select(vec3<bool>(true, var_1.d, var_1.d), vec3<bool>(arg_0.d, false, var_3.d), vec3<bool>(var_3.d, var_1.d, false)), vec3<bool>(arg_1.x, arg_1.x, true))), true), !(!(!(!vec3<bool>(true, var_3.d, false)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + -1000f), _wgslsmith_f_op_f32(step(var_0.x, -536f)), var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 249f, 1162f, var_0.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -785f, -398f, var_0.x), vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1227f, 918f, -1000f, 688f)))));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-188f - _wgslsmith_div_f32(-532f, -1552f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-651f, 1049f)))));
    let var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -1154f))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-369f - 1050f)))) || !(_wgslsmith_div_u32(1u, u_input.b.x) != _wgslsmith_dot_vec2_u32(~u_input.b.zz, ~u_input.b.xy));
    var var_2 = 733f;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(Struct_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), vec2<i32>(u_input.a.x, -54678i), _wgslsmith_add_vec2_i32(vec2<i32>(-58274i, u_input.a.x), vec2<i32>(u_input.a.x, -17946i)), any(vec2<bool>(false, true)), Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)), vec2<bool>(true, true), func_5(Struct_2(Struct_1(-39627i, vec2<i32>(-43913i, -90i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.a.x, u_input.a.x), var_1, Struct_1(u_input.a.x, vec2<i32>(-60620i, u_input.a.x), u_input.a)), Struct_2(Struct_1(-2147483647i, u_input.a.xz, u_input.a), u_input.a.xz, u_input.a.yx, true, Struct_1(1i, vec2<i32>(u_input.a.x, 43472i), vec3<i32>(u_input.a.x, -5684i, u_input.a.x))), select(vec4<bool>(true, false, true, true), vec4<bool>(var_1, var_1, false, false), var_1), func_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, 2147483647i), vec3<i32>(-6583i, u_input.a.x, -2147483647i)), Struct_1(-25090i, u_input.a.yx, u_input.a))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(194f * var_0), _wgslsmith_f_op_f32(var_0 * var_0))))));
    let var_4 = _wgslsmith_add_vec4_u32(min(vec4<u32>(44088u, ~u_input.b.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 0u), 1u), u_input.b.x), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 89760u, 16024u, u_input.b.x)), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b.x, u_input.b.x, 1u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 37133u, u_input.b.x), vec4<u32>(u_input.b.x, 104234u, 42966u, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(16901u, 4294967295u, 23402u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))));
    return func_4(func_5(Struct_2(func_5(Struct_2(Struct_1(0i, vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec2<i32>(u_input.a.x, -22830i), u_input.a.yy, var_1, Struct_1(18007i, u_input.a.zy, u_input.a)), Struct_2(Struct_1(u_input.a.x, u_input.a.zz, u_input.a), u_input.a.yy, u_input.a.yy, var_1, Struct_1(5731i, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)), !vec4<bool>(true, var_1, var_1, false), Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)), vec2<i32>(u_input.a.x, -171i ^ u_input.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 47278i), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x))), var_1, Struct_1(-2147483647i, min(vec2<i32>(1i, 22337i), vec2<i32>(u_input.a.x, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a.x, 10826i), u_input.a, u_input.a))), Struct_2(func_5(Struct_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 7114i)), u_input.a.zy, u_input.a.xx, true, Struct_1(1i, u_input.a.xz, u_input.a)), Struct_2(Struct_1(u_input.a.x, vec2<i32>(44735i, 30767i), u_input.a), vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, -2147483647i), false, Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 62399i, u_input.a.x))), select(vec4<bool>(true, true, true, false), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, true, false, true)), func_5(Struct_2(Struct_1(u_input.a.x, u_input.a.xz, vec3<i32>(1i, 30651i, u_input.a.x)), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy, true, Struct_1(22533i, u_input.a.xy, vec3<i32>(1i, u_input.a.x, 7670i))), Struct_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.zy, u_input.a.yx, var_1, Struct_1(u_input.a.x, vec2<i32>(2147483647i, u_input.a.x), u_input.a)), vec4<bool>(false, true, var_1, var_1), Struct_1(u_input.a.x, u_input.a.yy, u_input.a))), ~u_input.a.xz, -firstTrailingBit(u_input.a.yz), func_4(_wgslsmith_div_i32(u_input.a.x, -14573i), func_5(Struct_2(Struct_1(u_input.a.x, u_input.a.zx, vec3<i32>(0i, -6148i, -1i)), vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.a.x, -2147483647i), var_1, Struct_1(-35460i, u_input.a.xx, u_input.a)), Struct_2(Struct_1(0i, u_input.a.xy, u_input.a), vec2<i32>(34447i, -1i), vec2<i32>(0i, 0i), true, Struct_1(-6497i, vec2<i32>(u_input.a.x, 0i), u_input.a)), vec4<bool>(false, var_1, var_1, true), Struct_1(28784i, vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, 1i))), Struct_2(Struct_1(u_input.a.x, u_input.a.zy, u_input.a), u_input.a.yy, vec2<i32>(71009i, u_input.a.x), false, Struct_1(8852i, vec2<i32>(-1407i, 1i), u_input.a)), Struct_1(u_input.a.x, vec2<i32>(1i, u_input.a.x), u_input.a)).x, Struct_1(_wgslsmith_sub_i32(-18577i, -13326i), vec2<i32>(-2147483647i, 0i), -u_input.a)), vec4<bool>(all(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, var_1), false)), all(vec4<bool>(false, var_1, var_1, var_1)), any(vec2<bool>(var_1, var_1)), select(false, true, var_1)), Struct_1(min(u_input.a.x, abs(u_input.a.x)), u_input.a.zz, _wgslsmith_mult_vec3_i32(~u_input.a, u_input.a))).b.x, func_2(func_5(Struct_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), u_input.a.xy, u_input.a.yz, true, func_2(Struct_1(u_input.a.x, vec2<i32>(-1i, -1i), vec3<i32>(0i, -28251i, u_input.a.x)), Struct_1(0i, u_input.a.zx, u_input.a))), Struct_2(Struct_1(u_input.a.x, vec2<i32>(8366i, -2147483647i), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), ~vec2<i32>(0i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), false, Struct_1(u_input.a.x, vec2<i32>(-2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), !(!vec4<bool>(var_1, true, false, var_1)), Struct_1(u_input.a.x >> (1u % 32u), vec2<i32>(-7835i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(17443i, -1i, u_input.a.x), vec3<i32>(8540i, -13981i, 1i)))), func_2(func_2(Struct_1(2147483647i, u_input.a.xz, vec3<i32>(-1i, u_input.a.x, u_input.a.x)), Struct_1(16472i, vec2<i32>(u_input.a.x, -26294i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x))), func_2(Struct_1(32289i, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), Struct_1(4491i, vec2<i32>(u_input.a.x, 12190i), u_input.a)))), Struct_2(func_2(func_5(Struct_2(Struct_1(1i, vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), vec2<i32>(-3690i, 41923i), vec2<i32>(u_input.a.x, u_input.a.x), var_1, Struct_1(0i, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)), Struct_2(Struct_1(u_input.a.x, u_input.a.xz, vec3<i32>(-2147483647i, 32684i, u_input.a.x)), vec2<i32>(u_input.a.x, 19340i), u_input.a.yx, true, Struct_1(u_input.a.x, u_input.a.xx, u_input.a)), vec4<bool>(false, false, true, true), func_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), Struct_1(-31315i, vec2<i32>(1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), Struct_1(i32(-1i) * -2147483647i, vec2<i32>(34135i, 2147483647i), vec3<i32>(-11000i, -33060i, u_input.a.x))), u_input.a.yz >> (abs(~u_input.b.yz) % vec2<u32>(32u)), vec2<i32>(u_input.a.x | abs(u_input.a.x), u_input.a.x), var_1, func_5(Struct_2(func_2(Struct_1(-44353i, vec2<i32>(-4535i, 2147483647i), u_input.a), Struct_1(u_input.a.x, u_input.a.yz, vec3<i32>(0i, 53906i, -14617i))), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a.yy), func_3(vec4<f32>(-1249f, var_0, var_0, -1145f)).xz, var_1 != var_1, func_5(Struct_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), vec2<i32>(u_input.a.x, -31726i), u_input.a.yz, false, Struct_1(0i, vec2<i32>(-1i, 28109i), u_input.a)), Struct_2(Struct_1(-10961i, u_input.a.zz, u_input.a), u_input.a.yx, vec2<i32>(1i, -2147483647i), var_1, Struct_1(1i, u_input.a.xx, u_input.a)), vec4<bool>(var_1, var_1, true, true), Struct_1(u_input.a.x, u_input.a.xx, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), Struct_2(func_5(Struct_2(Struct_1(-26116i, u_input.a.zz, u_input.a), vec2<i32>(2147483647i, u_input.a.x), u_input.a.zx, var_1, Struct_1(u_input.a.x, vec2<i32>(-11398i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x))), Struct_2(Struct_1(-64210i, vec2<i32>(2147483647i, 35324i), vec3<i32>(26686i, 28854i, u_input.a.x)), vec2<i32>(-2147483647i, 4250i), vec2<i32>(u_input.a.x, 0i), false, Struct_1(1i, u_input.a.zx, u_input.a)), vec4<bool>(true, var_1, var_1, false), Struct_1(-1i, u_input.a.xz, u_input.a)), ~u_input.a.zx, ~vec2<i32>(u_input.a.x, 66895i), select(var_1, var_1, var_1), Struct_1(-2147483647i, u_input.a.yz, u_input.a)), !select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(true, false, true, var_1), false), func_2(Struct_1(-50045i, u_input.a.yx, u_input.a), Struct_1(u_input.a.x, vec2<i32>(31869i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, -11860i))))), func_2(func_2(func_5(Struct_2(Struct_1(24895i, vec2<i32>(24904i, u_input.a.x), u_input.a), u_input.a.yy, vec2<i32>(-58131i, u_input.a.x), true, Struct_1(1i, u_input.a.yz, u_input.a)), Struct_2(Struct_1(2147483647i, vec2<i32>(0i, -2147483647i), vec3<i32>(-30325i, 2147483647i, u_input.a.x)), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), true, Struct_1(u_input.a.x, u_input.a.zy, u_input.a)), vec4<bool>(var_1, false, var_1, var_1), Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, 13239i), vec3<i32>(u_input.a.x, u_input.a.x, 0i))), Struct_1(-3583i, select(vec2<i32>(-2147483647i, 28103i), u_input.a.yy, false), countOneBits(vec3<i32>(u_input.a.x, 0i, u_input.a.x)))), func_2(func_5(Struct_2(Struct_1(u_input.a.x, u_input.a.zz, u_input.a), vec2<i32>(-41880i, -2147483647i), vec2<i32>(u_input.a.x, -1i), false, Struct_1(u_input.a.x, u_input.a.zz, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_2(Struct_1(0i, vec2<i32>(0i, u_input.a.x), u_input.a), u_input.a.xx, u_input.a.zy, var_1, Struct_1(-15667i, u_input.a.zy, u_input.a)), !vec4<bool>(true, false, true, var_1), func_5(Struct_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), u_input.a.zx, vec2<i32>(u_input.a.x, u_input.a.x), false, Struct_1(u_input.a.x, vec2<i32>(0i, -1i), vec3<i32>(u_input.a.x, 47i, u_input.a.x))), Struct_2(Struct_1(u_input.a.x, vec2<i32>(-32816i, -40599i), u_input.a), u_input.a.zx, vec2<i32>(-33347i, -1i), false, Struct_1(u_input.a.x, u_input.a.yx, vec3<i32>(u_input.a.x, 7158i, 21162i))), vec4<bool>(true, var_1, true, var_1), Struct_1(u_input.a.x, u_input.a.xz, u_input.a))), func_5(Struct_2(Struct_1(2147483647i, u_input.a.yz, vec3<i32>(u_input.a.x, -26087i, -2147483647i)), u_input.a.yy, u_input.a.yx, var_1, Struct_1(48777i, u_input.a.zx, u_input.a)), Struct_2(Struct_1(-2147483647i, u_input.a.xz, vec3<i32>(-1i, -8126i, 0i)), u_input.a.yz, u_input.a.xz, true, Struct_1(u_input.a.x, u_input.a.zz, u_input.a)), vec4<bool>(true, true, true, true), func_2(Struct_1(2147483647i, vec2<i32>(2147483647i, u_input.a.x), vec3<i32>(-1i, -11304i, u_input.a.x)), Struct_1(-68711i, vec2<i32>(2147483647i, u_input.a.x), u_input.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(634f - 153f), -173f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(450f, 233f))), vec2<f32>(678f, -647f), func_1())))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 589f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1095f, -266f)))) - vec2<f32>(_wgslsmith_f_op_f32(abs(1437f)), _wgslsmith_f_op_f32(min(-357f, -1713f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(Struct_2(Struct_1(-2147483647i, vec2<i32>(-1i, u_input.a.x), u_input.a), select(vec2<i32>(-1i, 0i), u_input.a.zy, vec2<bool>(false, true)), func_2(Struct_1(-12142i, u_input.a.yz, u_input.a), Struct_1(u_input.a.x, u_input.a.yz, u_input.a)).c.yz, true, func_5(Struct_2(Struct_1(u_input.a.x, u_input.a.yx, u_input.a), vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, -14335i), false, Struct_1(36344i, u_input.a.zz, vec3<i32>(-47081i, u_input.a.x, 0i))), Struct_2(Struct_1(0i, u_input.a.xz, u_input.a), u_input.a.yz, u_input.a.yy, true, Struct_1(0i, vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -1i))), vec4<bool>(false, true, true, false), Struct_1(1i, u_input.a.yx, vec3<i32>(-21313i, u_input.a.x, -2147483647i)))), vec2<bool>(true, true), Struct_1(_wgslsmith_add_i32(-2147483647i, u_input.a.x), u_input.a.yx, reverseBits(vec3<i32>(u_input.a.x, 0i, 573i)))))), var_0, _wgslsmith_mult_i32(0i, u_input.a.x), abs((vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -22491i, 2147483647i, -45655i)) & vec4<i32>(u_input.a.x, firstLeadingBit(-12547i), u_input.a.x >> (u_input.b.x % 32u), u_input.a.x)));
}

