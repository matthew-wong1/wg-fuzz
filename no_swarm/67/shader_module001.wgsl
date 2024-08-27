struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(232f, -215f, 308f, 145f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(779f, 194f, -1120f, -1000f)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(559f, -1288f, -1927f, 752f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2273f, 534f, -1863f, 1000f) - vec4<f32>(2004f, 2590f, 1000f, -1213f)))))), select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(true, any(vec4<bool>(true, true, true, false)), any(vec2<bool>(false, false)))), vec4<bool>(true, false, any(vec3<bool>(false, true, false)) || all(vec4<bool>(true, false, true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)))), !all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    var var_1 = vec3<bool>(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_f32(1470f * var_0.c.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2130f) * 1257f), true, any(select(vec2<bool>(false, var_0.d.x), !var_0.d.yx, !var_0.a.x))), any(!vec4<bool>(var_0.a.x, false, true, false)) || any(var_0.d.wyx), 1i != ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 31301i), vec3<i32>(-39867i, u_input.a, u_input.a)));
    var_0 = Struct_1(vec2<bool>(any(select(!vec3<bool>(false, false, var_0.d.x), select(var_0.d.wxy, vec3<bool>(var_0.d.x, false, var_1.x), var_0.d.xzw), vec3<bool>(var_0.d.x, var_0.a.x, var_1.x))), var_1.x), select(select(var_0.b, select(var_0.b, select(vec4<bool>(var_1.x, false, false, var_1.x), var_0.b, var_0.b), !var_0.a.x), var_0.d), var_0.b, select(!var_0.d, vec4<bool>(var_0.c.x < var_0.c.x, var_0.a.x, false, true), var_0.d)), var_0.c, !vec4<bool>(!(!var_1.x), var_1.x | true, !(!var_0.b.x), true));
    var_0 = Struct_1(var_1.zz, var_0.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.c + var_0.c))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), vec4<bool>(!var_0.a.x, true, true, true)))), var_0.d);
    var var_2 = Struct_1(!(!(!var_0.d.zz)), vec4<bool>(false, var_1.x, true, true), var_0.c, select(vec4<bool>(any(var_0.b.yyw), var_1.x, true, any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_0.d, var_0.b.x))), select(!(!var_0.b), var_0.b, false), select(var_0.d, var_0.d, select(!vec4<bool>(var_0.a.x, false, true, var_1.x), select(var_0.b, var_0.d, var_0.b.x), true))));
    return -firstTrailingBit(vec3<i32>(~2147483647i, -1i & -u_input.a, u_input.a));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(abs(reverseBits(u_input.a)), -1i, -2073i)), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(33980u, 1u, 12623u) % vec3<u32>(32u)), vec3<i32>(-1i, 0i, u_input.a)) | _wgslsmith_sub_vec3_i32(~vec3<i32>(27350i, 1i, 22813i), vec3<i32>(u_input.a, 1i, 44149i))));
    var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, ~(~(-18623i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 19649i, 40255i), vec4<i32>(var_0.x, -1i, var_0.x, u_input.a))), func_3());
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0.d.c.x)))), arg_0.d.c.x)))));
    var_0 = -(~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, var_0.x, var_0.x)), vec3<i32>(var_0.x, 9583i, var_0.x) ^ vec3<i32>(var_0.x, -2147483647i, -14760i)), vec3<i32>(u_input.a, i32(-1i) * -2147483647i, countOneBits(u_input.a))));
    let var_2 = ~(~min(select(vec3<i32>(u_input.a, 1i, 2147483647i) & vec3<i32>(-33860i, 57656i, var_0.x), select(vec3<i32>(u_input.a, 15854i, 0i), vec3<i32>(var_0.x, 28675i, -1i), vec3<bool>(false, false, false)), select(arg_0.a.b.x, arg_0.c.a.x, arg_0.a.d.x)), max(firstTrailingBit(vec3<i32>(52421i, var_0.x, -5774i)), ~vec3<i32>(28254i, 44791i, 0i))));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = -314f;
    return Struct_3(abs(~(arg_2 | (1i ^ arg_1.x))), func_2(Struct_2(arg_0.b.d, _wgslsmith_f_op_f32(abs(-298f)), Struct_1(vec2<bool>(arg_0.b.e, arg_0.b.e), vec4<bool>(arg_0.b.a.a.x, arg_0.b.e, false, arg_0.b.a.b.x), vec4<f32>(arg_0.b.b, arg_0.b.a.c.x, var_0, 524f), !arg_0.b.c.b), Struct_1(select(arg_0.b.c.d.yw, vec2<bool>(true, arg_0.b.e), arg_0.b.e), arg_0.b.d.d, _wgslsmith_f_op_vec4_f32(max(arg_0.b.d.c, vec4<f32>(arg_0.b.a.c.x, 680f, arg_0.b.a.c.x, 266f))), !arg_0.b.a.b), true)), _wgslsmith_clamp_vec4_i32(arg_0.c, arg_0.c, _wgslsmith_clamp_vec4_i32(max(vec4<i32>(2147483647i, -1i, -25432i, -1i), ~arg_0.c), -(~vec4<i32>(0i, -2147483647i, -36189i, -54550i)), vec4<i32>(u_input.a, 4809i, arg_2, _wgslsmith_div_i32(arg_2, 22505i)))));
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    var var_0 = 1294f;
    var var_1 = -700f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2278f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-268f)))), 702f)));
    var_0 = _wgslsmith_div_f32(-530f, arg_0.b.c.c.x);
    var_0 = -323f;
    return Struct_4(arg_0, ~_wgslsmith_clamp_vec2_i32(arg_0.c.xy, -vec2<i32>(u_input.a, arg_0.a), -vec2<i32>(arg_0.c.x, 69657i)), any(!vec2<bool>(247f < arg_0.b.a.c.x, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(arg_0.b).b - _wgslsmith_f_op_f32(_wgslsmith_div_f32(242f, 663f) - _wgslsmith_f_op_f32(-arg_0.b.b))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_5(func_4(Struct_3(-14783i, func_2(Struct_2(Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, false, false), vec4<f32>(-749f, 335f, -300f, -1000f), vec4<bool>(false, false, false, true)), 1384f, Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, false, false), vec4<f32>(-372f, -2257f, -361f, -219f), vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, true, true), vec4<f32>(-631f, 1686f, 556f, 650f), vec4<bool>(false, true, false, false)), false)), vec4<i32>(u_input.a, -42318i, ~arg_0, ~arg_0)), abs(-vec3<i32>(u_input.a, u_input.a, -34349i)) << (~select(vec3<u32>(60894u, 4294967295u, 13738u), vec3<u32>(38167u, 4294967295u, 1u), false) % vec3<u32>(32u)), u_input.a));
    var var_1 = 30415u == firstLeadingBit(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(51806u, 35039u), vec2<u32>(10714u, 58057u), vec2<u32>(1u, 0u)), vec2<u32>(4294967295u, 1u)), ~0u));
    var_1 = !(!var_0.c);
    let var_2 = Struct_1(select(var_0.a.b.d.a, select(var_0.a.b.c.a, select(var_0.a.b.c.a, !var_0.a.b.d.a, var_0.a.b.e), !(!vec2<bool>(var_0.c, var_0.a.b.e))), var_0.a.b.a.d.xy), var_0.a.b.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(var_0.a.b.c.c, var_0.a.b.c.c))))) + var_0.a.b.c.c), func_2(var_0.a.b).c.b);
    var_1 = var_2.d.x;
    return Struct_1(!(!var_2.d.ww), select(var_2.d, var_0.a.b.a.d, func_4(var_0.a, func_3(), arg_0).b.d.d), var_2.c, !func_4(func_4(var_0.a, var_0.a.c.zwz, _wgslsmith_add_i32(var_0.a.a, -1i)), var_0.a.c.yzx, 2147483647i).b.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-34425i);
    let var_1 = min(vec3<u32>(20285u, 1u, 88715u), vec3<u32>(8918u, min(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~2759u), 27031u), ~reverseBits(_wgslsmith_clamp_u32(19904u, 14569u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zy, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(-func_1(3662i).c.x)), -1173f), select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 30728u, 20241u), vec4<u32>(31374u, 4294967295u, var_1.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, var_1.x), firstLeadingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, 30313u)))), _wgslsmith_div_u32(var_1.x, var_1.x), true));
}

