struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1006u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    global0 = ~_wgslsmith_div_u32(~_wgslsmith_add_u32(countOneBits(0u), _wgslsmith_add_u32(1u, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 318u, 0u, 4294967295u), vec4<u32>(u_input.b.x, 0u, 25508u, u_input.a.x)), ~4294967295u, u_input.b.x, 1u), vec4<u32>(~u_input.a.x, u_input.a.x | 73350u, u_input.b.x, select(9201u, 51833u, false))));
    global0 = select(~(0u & u_input.c), u_input.c ^ 0u, true);
    global0 = _wgslsmith_mod_u32(select(1u, u_input.b.x, any(vec2<bool>(true, true))), 45039u);
    global0 = ~1u;
    global0 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x), 35999u), u_input.c);
    return ~u_input.b.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1978f, _wgslsmith_f_op_f32(f32(-1f) * -449f), 623f)));
    global0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(select(countOneBits(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x ^ u_input.a.x, 86507u), false), func_3(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(max(var_0.yy, vec2<f32>(var_0.x, var_0.x)))), var_0.zz), 2768u), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(14383u, u_input.b.x, u_input.c, u_input.a.x), vec4<u32>(0u, u_input.c, u_input.c, u_input.a.x))), _wgslsmith_mod_u32(max(4294967295u, u_input.c), u_input.b.x | u_input.a.x), 61419u));
    var var_1 = u_input.a.x;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(2165f, var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1201f, _wgslsmith_f_op_f32(-var_0.x), !any(vec2<bool>(true, false)))), var_0.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1666f, var_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(var_0.xy)), var_0.zz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx))), max(u_input.b.x, ~(~min(u_input.b.x, u_input.c))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c.c.x), -467f))));
    return Struct_4(min(firstLeadingBit(~vec4<i32>(u_input.d.x, -49958i, arg_0.x, -2147483647i)) | _wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.d.x, arg_0.x, arg_0.x, u_input.d.x), vec4<i32>(u_input.d.x, -8924i, 39089i, 39958i)), ~vec4<i32>(-68488i, arg_0.x, 14348i, u_input.d.x)), ~vec4<i32>(_wgslsmith_clamp_i32(arg_0.x, 1i, u_input.d.x), 1i, 1i, ~(-42754i))), abs(countOneBits(vec2<i32>(-1i) * -arg_0)), vec2<bool>(true, !(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, u_input.d.x), vec3<i32>(0i, 3051i, 2147483647i)) == firstTrailingBit(u_input.d.x))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_4) -> vec2<f32> {
    return vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(abs(arg_1.b)));
}

fn func_1() -> vec2<bool> {
    global0 = select(1u, 1u, true);
    let var_0 = ~vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 34946u, u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(func_2(vec2<i32>(1049i, 2147483647i)), Struct_5(-162f, _wgslsmith_f_op_f32(f32(-1f) * -1226f), Struct_2(Struct_1(vec2<f32>(-632f, 1658f)), Struct_1(vec2<f32>(598f, -2810f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-147f, 252f))), var_0.x), Struct_4(vec4<i32>(u_input.d.x, 1i, 13576i, 1i) & vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), -u_input.d, vec2<bool>(true, false)))));
    global0 = var_0.x;
    let var_2 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.yzz, vec3<u32>(var_0.x, var_0.x, 55854u) << (vec3<u32>(u_input.a.x, u_input.b.x, var_0.x) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a.x, 1u, var_0.x)), ~(~(~vec3<u32>(u_input.a.x, 4294967295u, 70466u))));
    return !(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> Struct_4 {
    global0 = ~(u_input.b.x & 0u);
    let var_0 = arg_0.b;
    let var_1 = true;
    var var_2 = 4294967295u;
    var_2 = u_input.b.x;
    return Struct_4(arg_0.a, vec2<i32>(-10459i << (u_input.b.x % 32u), u_input.d.x), !func_1());
}

fn func_6(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.a.x)) + 235f), _wgslsmith_f_op_f32(1377f + _wgslsmith_f_op_f32(1004f * arg_2.c.x)), 938f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.a.x, arg_2.a.a.x, 331f) - vec3<f32>(1000f, -740f, -903f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1695f, -280f, arg_2.b.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2516f, 125f, -967f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.x, -462f, arg_2.c.x) + vec3<f32>(697f, arg_2.a.a.x, -973f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.c.x, _wgslsmith_div_f32(-803f, -1000f), -1601f))))));
    var var_1 = Struct_2(arg_2.b, arg_2.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2.c))));
    var_1 = arg_2;
    let var_2 = arg_0.c.x;
    global0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b.wx, ~(~vec2<u32>(7768u, arg_1.x))) ^ u_input.c);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -1114f, arg_2.a.a.x, 316f))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.a.x), arg_2.c.x)), 737f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-309f + var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(func_5(Struct_4(reverseBits(vec4<i32>(-2147483647i, var_0, -1i, var_0)), -vec2<i32>(1i, 0i), func_1()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-729f + 725f)))), u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -274f)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(136f, -847f) - vec2<f32>(1093f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-389f, 731f), vec2<f32>(-491f, 185f)))), func_2(-u_input.d).c)));
    let var_2 = Struct_1(vec2<f32>(773f, _wgslsmith_f_op_f32(f32(-1f) * -1440f)));
    var var_3 = Struct_4(firstLeadingBit(vec4<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(21903i, -1i, var_0), vec3<i32>(u_input.d.x, u_input.d.x, var_0)), u_input.d.x), min(max(var_0, 42118i), u_input.d.x), i32(-1i) * -1i, 1i)), u_input.d, vec2<bool>(true, true));
    var_3 = func_2(~vec2<i32>(var_3.b.x, max(-u_input.d.x, -11378i)));
    let var_4 = Struct_5(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - var_1.x)))) * _wgslsmith_f_op_f32(1000f * 1875f)), Struct_2(Struct_1(var_2.a), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1538f, -1780f))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + 160f)))), u_input.b.x);
    let var_5 = countOneBits(reverseBits(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.x)))), -597f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - 421f))), -267f) + vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-1669f + -1564f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) + 1099f), 1507f)), ~14520u, _wgslsmith_div_vec3_i32(-(~var_3.a.xzy), -vec3<i32>(min(18649i, 3000i), var_3.b.x | -6383i, var_0)));
}

