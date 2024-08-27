struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(~16860u, arg_2 & reverseBits(vec4<i32>(-arg_1, firstTrailingBit(1i), -12446i, arg_2.x)), _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 4294967295u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(1u, 55515u, u_input.a))), vec3<u32>(u_input.a, u_input.a, u_input.a), true), _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(10678u, 37982u, u_input.a))), abs(max(vec3<u32>(40431u, 57545u, 68715u), vec3<u32>(u_input.a, u_input.a, u_input.a))))), arg_2.yy);
    var_1 = Struct_1(11964u, ~arg_2, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(74782u, 17782u), vec2<u32>(var_1.c, 4294967295u) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 55243u), vec2<u32>(4294967295u, 17687u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(149991u, u_input.a, var_1.c), vec3<u32>(u_input.a, u_input.a, 4294967295u)), countOneBits(4294967295u)))), arg_2.zy);
    var_0 = arg_0;
    let var_2 = ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a, 12553u, 4294967295u), vec3<u32>(0u, var_1.a, 1u))) >> (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(var_1.c, var_1.a, var_1.a)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, var_1.a, var_1.a)), ~vec3<u32>(var_1.a, 4294967295u, 69968u))) % vec3<u32>(32u)));
    return _wgslsmith_clamp_u32(var_2.x, u_input.a, var_1.c);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = ~vec3<u32>(0u, 0u, func_3(Struct_3(true), -(~(-1i)), abs(select(vec4<i32>(0i, -2147483647i, -2147483647i, -27507i), vec4<i32>(15086i, -1i, 42480i, 78613i), vec4<bool>(arg_0.x, true, arg_0.x, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1314f), -821f, -320f, 1000f))));
    let var_2 = Struct_3(arg_0.x);
    let var_3 = ~(i32(-1i) * -(40686i >> (u_input.a % 32u)));
    let var_4 = Struct_4(Struct_2(Struct_1(abs(u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-39504i, -3966i, 27690i, var_3), ~vec4<i32>(var_3, var_3, 2147483647i, 22501i)), _wgslsmith_clamp_u32(u_input.a, u_input.a, ~var_0.x), ~vec2<i32>(var_3, 8976i)), var_1.zy, Struct_1(_wgslsmith_sub_u32(var_0.x, 1u >> (var_0.x % 32u)), vec4<i32>(firstTrailingBit(var_3), var_3, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3, var_3), vec2<i32>(var_3, 35477i)), -1i), u_input.a, vec2<i32>(7093i, 23011i) & countOneBits(vec2<i32>(var_3, var_3)))), var_2, ~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), max(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(9467u, 6433u, 12943u)))));
    return Struct_2(var_4.a.a, var_1.wy, Struct_1(u_input.a, select(var_4.a.c.b, -vec4<i32>(2147483647i, 1i, -22626i, 52920i), arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~101873u, var_0.x, ~var_0.x, 72549u | var_0.x), vec4<u32>(var_0.x, ~10608u, 4294967295u, 1u)), vec2<i32>(-var_4.a.c.b.x, _wgslsmith_div_i32(~var_4.a.a.b.x, _wgslsmith_clamp_i32(-42752i, -1i, 1i)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = vec3<f32>(arg_0.b.x, 948f, -1836f);
    var var_1 = vec3<i32>(-arg_0.c.b.x, -arg_0.c.b.x, -6520i);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -245f) + vec3<f32>(666f, -1000f, -179f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1505f, var_0.x) * vec3<f32>(var_0.x, arg_0.b.x, -1054f))))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -573f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))))));
    let var_2 = 38091u;
    let var_3 = func_2(select(!(!vec3<bool>(arg_2, true, arg_2)), vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, false))), _wgslsmith_f_op_f32(select(var_0.x, -1236f, arg_2)) <= _wgslsmith_f_op_f32(step(-1141f, arg_0.b.x)), arg_2), !select(vec3<bool>(arg_2, true, arg_2), select(vec3<bool>(false, arg_2, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, arg_2, true), vec3<bool>(true, true, false), vec3<bool>(arg_2, true, false))))).a;
    return Struct_2(func_2(vec3<bool>(true, true, arg_2)).a, vec2<f32>(var_0.x, arg_0.b.x), func_2(vec3<bool>(arg_2, -22133i >= arg_1.d.x, true)).a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_4(func_4(func_2(select(select(vec3<bool>(arg_2, false, false), vec3<bool>(true, false, true), true), !vec3<bool>(true, true, arg_2), select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, false, true), false))), func_2(vec3<bool>(true, true, true)).c, false), Struct_3(!all(!vec2<bool>(false, arg_2))), arg_0.c);
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(arg_3.x, 37007i, -1i)), arg_0.b.wzz), arg_1.d.x);
    return ~var_0.a.c.a;
}

fn func_5(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec3_i32(~vec3<i32>(-(i32(-1i) * -48232i), 17559i, -_wgslsmith_sub_i32(14874i, -9255i)), abs(-vec3<i32>(1i, 1i, 1i)));
    let var_1 = Struct_4(Struct_2(func_4(func_2(vec3<bool>(true, true, true)), func_4(Struct_2(Struct_1(24633u, vec4<i32>(var_0.x, var_0.x, 6048i, var_0.x), u_input.a, vec2<i32>(var_0.x, var_0.x)), vec2<f32>(453f, -1049f), Struct_1(u_input.a, vec4<i32>(0i, var_0.x, -5980i, 48108i), 4294967295u, var_0.xx)), Struct_1(arg_0.x, vec4<i32>(var_0.x, 24905i, var_0.x, -11031i), 1u, vec2<i32>(-51924i, var_0.x)), true).a, true).a, vec2<f32>(_wgslsmith_f_op_f32(min(-1094f, 172f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f - -799f))), func_2(vec3<bool>(any(vec2<bool>(true, true)), false, any(vec4<bool>(false, true, true, false)))).a), Struct_3(true), abs(arg_0.x));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-35483i, var_0.x), vec2<i32>(var_0.x, -(~(var_1.a.c.b.x & -9284i))));
    var var_3 = var_1.a.c.b.x;
    var_0 = var_1.a.a.b.ywy << (arg_0.xxz % vec3<u32>(32u));
    return Struct_3(!var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~vec4<u32>(firstLeadingBit(4294967295u), func_1(Struct_1(u_input.a, vec4<i32>(54791i, 2147483647i, -27349i, -35090i), u_input.a, vec2<i32>(-13984i, 0i)), Struct_1(u_input.a, vec4<i32>(-2147483647i, 1i, -41739i, 0i), 4294967295u, vec2<i32>(-79205i, 8823i)), true, vec4<i32>(0i, -32765i, -2147483647i, -15988i)), u_input.a, u_input.a & u_input.a) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.a, ~u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(~24416u, u_input.a), reverseBits(~vec4<i32>(1i, 1i, 1i, 1i)), func_2(vec3<bool>(var_0.a, var_0.a, var_0.a)).a.c, vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 10036i, -13307i), vec3<i32>(-6257i, -18765i, 1i)), 51284i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1530f, 1262f), vec2<f32>(2137f, 820f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1120f, 588f))))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 66795u) << (~vec3<u32>(92773u, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 26604u), vec3<u32>(u_input.a, u_input.a, 0u)) >> (abs(vec3<u32>(u_input.a, u_input.a, 4294967295u)) % vec3<u32>(32u))), vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(4294967295u | u_input.a, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33468u, 4294967295u, 376u), vec3<u32>(1u, u_input.a, u_input.a)), u_input.a), min(vec2<i32>(1i, -1i), select(select(vec2<i32>(20800i, -36056i), vec2<i32>(-5328i, 32650i), vec2<bool>(true, var_0.a)), select(vec2<i32>(-10267i, -20851i), vec2<i32>(-2147483647i, -37185i), var_0.a), var_0.a))));
    var var_2 = Struct_2(Struct_1(11124u, _wgslsmith_mod_vec4_i32((var_1.a.b | var_1.c.b) & var_1.c.b, vec4<i32>(2147483647i, 0i, -2147483647i, var_1.c.b.x) ^ (vec4<i32>(var_1.a.b.x, var_1.a.b.x, 1i, -1i) & var_1.a.b)), ~88037u, var_1.c.b.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_f_op_f32(abs(var_1.b.x))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1166f), -1162f)) * vec2<f32>(1027f, var_1.b.x)), Struct_1(u_input.a, vec4<i32>(countOneBits(_wgslsmith_div_i32(var_1.c.d.x, var_1.c.d.x)), 7423i >> (~var_1.c.c % 32u), abs(var_1.c.d.x), var_1.c.d.x), firstTrailingBit(func_3(var_0, 37812i, countOneBits(var_1.c.b))), vec2<i32>(0i, 2147483647i ^ (-1i ^ var_1.c.b.x))));
    var_1 = func_2(select(!select(!vec3<bool>(var_0.a, var_0.a, true), !vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, true, var_0.a))), !vec3<bool>(true, var_0.a, true), vec3<bool>(all(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a)), any(vec3<bool>(var_0.a, false, var_0.a)), var_0.a)));
    let var_3 = var_2.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4369u), vec2<u32>(1u, 1u))), _wgslsmith_clamp_u32(~var_2.a.c, u_input.a | 4294967295u, firstLeadingBit(3275u)), true), u_input.a, var_2.a.c), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.a, u_input.a, var_2.a.c), vec3<u32>(var_2.a.c, var_1.a.a, var_2.c.a)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, var_2.c.a), vec3<u32>(var_2.c.c, 2434u, var_2.a.c), vec3<u32>(var_1.a.a, 1u, 4294967295u)) % vec3<u32>(32u))) >> (select(~select(vec3<u32>(u_input.a, var_2.c.c, var_2.c.c), vec3<u32>(var_2.c.a, 0u, 9569u), false), ~(vec3<u32>(u_input.a, u_input.a, var_1.a.a) | vec3<u32>(1u, var_1.a.a, u_input.a)), false) % vec3<u32>(32u)), vec2<i32>(1i, func_4(func_2(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(true, var_0.a, false), vec3<bool>(true, var_0.a, true))), func_2(!vec3<bool>(true, true, var_0.a)).a, var_0.a).a.b.x));
}

