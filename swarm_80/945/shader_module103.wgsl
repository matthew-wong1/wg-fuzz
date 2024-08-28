struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> vec4<bool> {
    let var_0 = all(!select(!vec4<bool>(true, true, false, arg_1), select(!vec4<bool>(arg_1, true, true, arg_1), !vec4<bool>(arg_1, arg_1, true, arg_1), select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1)), select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(103f)), !vec2<bool>(var_0 && (-1235f > arg_0.b), true), any(vec2<bool>(any(vec3<bool>(var_0, arg_1, var_0)), -1000f == _wgslsmith_div_f32(arg_0.b, arg_0.b))), !vec2<bool>(var_0, false));
    var var_2 = Struct_4(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(7060i, u_input.e) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 14275u), vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u)), arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -443f), vec4<u32>(77046u, abs(~_wgslsmith_div_u32(arg_0.c.x, u_input.a.x)), ~abs(~22477u), 94009u));
    let var_3 = _wgslsmith_sub_u32(u_input.c, u_input.a.x);
    let var_4 = var_1;
    return vec4<bool>(var_0, false, var_1.b.x, any(select(vec3<bool>(arg_1, select(var_1.b.x, true, var_4.b.x), 296f > var_1.a), !(!vec3<bool>(false, var_4.d.x, var_4.b.x)), vec3<bool>(!arg_1, any(vec4<bool>(false, var_0, false, true)), false))));
}

fn func_2(arg_0: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(97896u, u_input.c, u_input.a.x, u_input.a.x), vec4<u32>(u_input.c, 37626u, u_input.a.x, 65823u), abs(u_input.a)) << ((~vec4<u32>(u_input.c, u_input.c, 74385u, u_input.a.x) ^ max(vec4<u32>(54265u, u_input.c, u_input.c, 1u), u_input.a)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(u_input.a ^ ~u_input.a, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.xx), ~u_input.a.x, 0u, 4294967295u >> (u_input.c % 32u))), reverseBits(~vec4<u32>(15296u, u_input.a.x, 4294967295u, 1u))), u_input.a << (u_input.a % vec4<u32>(32u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(-223f)), 1f);
    return vec4<bool>(!(!select(arg_0.x, arg_0.x, false)) && false, arg_0.x, all(select(!(!vec4<bool>(false, true, arg_0.x, arg_0.x)), func_3(Struct_4(vec2<i32>(u_input.b.x, -2147483647i), var_1.x, vec4<u32>(4294967295u, 2163u, 3372u, var_0.x)), false), all(vec4<bool>(false, false, arg_0.x, arg_0.x)))), all(arg_0));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_2(vec3<bool>(!all(func_2(vec2<bool>(true, false))), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), vec4<u32>(firstLeadingBit(31128u), u_input.a.x, u_input.a.x, 60838u));
    let var_1 = _wgslsmith_mod_vec4_i32(-countOneBits(vec4<i32>(u_input.b.x, -8584i, -2147483647i, u_input.e) & vec4<i32>(-2147483647i, 8580i, u_input.d.x, u_input.b.x)) ^ ~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -1i, u_input.d.x, 62984i), vec4<i32>(u_input.b.x, 1i, -1i, u_input.e)) & select(vec4<i32>(u_input.d.x, u_input.d.x, -15000i, 37788i), vec4<i32>(u_input.e, u_input.e, u_input.e, 8182i), vec4<bool>(true, true, var_0.a.x, var_0.a.x))), reverseBits(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(72106i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, u_input.e, u_input.b.x, -1i), vec4<i32>(5674i, -16414i, u_input.b.x, 16618i)) >> (firstLeadingBit(var_0.c) % vec4<u32>(32u)))));
    var var_2 = firstTrailingBit(abs((1u | var_0.c.x) | ~u_input.a.x));
    var var_3 = 1i;
    var var_4 = Struct_3(Struct_2(vec3<bool>(true, var_0.a.x, var_0.a.x || true), -1409f, u_input.a));
    return !vec2<bool>(var_4.a.a.x, var_0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1342f), arg_0.d, true, !(!(!vec2<bool>(arg_0.d.x, true))));
    let var_1 = Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(~(~u_input.b.x), -(~(-21484i))), select(-(~u_input.d), u_input.b.yy & ~vec2<i32>(-2147483647i, u_input.d.x), select(!arg_1.b, vec2<bool>(arg_0.d.x, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2033f)))))), _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, _wgslsmith_sub_u32(~u_input.a.x, u_input.c), u_input.a.x, min(~23962u, firstLeadingBit(u_input.a.x))), ~_wgslsmith_clamp_vec4_u32(u_input.a & vec4<u32>(80194u, 102479u, u_input.a.x, u_input.c), ~vec4<u32>(0u, 32885u, u_input.a.x, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))));
    var var_2 = var_0.b;
    let var_3 = u_input.a.zx;
    let var_4 = u_input.b.x;
    return Struct_2(vec3<bool>(true, var_0.d.x, false), _wgslsmith_f_op_f32(floor(-845f)), ~(~(~var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1624f, -1906f))), vec2<bool>(u_input.d.x == -30722i, true), false, func_1()), Struct_1(_wgslsmith_f_op_f32(1f - -1136f), vec2<bool>(true, true), true, !func_3(Struct_4(u_input.b.zy, -1789f, u_input.a), true).yx)));
    let var_1 = select(var_0.a.c.zxx, ~(~vec3<u32>(u_input.a.x, abs(var_0.a.c.x), u_input.c ^ u_input.a.x)), !func_4(Struct_1(var_0.a.b, var_0.a.a.zy, var_0.a.a.x & var_0.a.a.x, select(vec2<bool>(true, var_0.a.a.x), var_0.a.a.zy, var_0.a.a.xx)), Struct_1(-1126f, vec2<bool>(var_0.a.a.x, var_0.a.a.x), any(vec3<bool>(var_0.a.a.x, var_0.a.a.x, false)), !var_0.a.a.zz)).a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.d.x), 1i, var_0.a.c.x, var_0.a.c.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(var_0.a.c.x), 1u | var_1.x), u_input.c) | firstLeadingBit(33603u));
}

