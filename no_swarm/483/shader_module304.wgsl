struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1183f)))), -942f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -1804f)) - 943f)), !(!vec3<bool>(any(vec2<bool>(true, false)), true, true)), !(!(_wgslsmith_f_op_f32(arg_1 + 592f) == arg_1)));
    var var_1 = u_input.c;
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(var_1.x, -2147483647i), -var_1.x, u_input.c.x), _wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(-u_input.c, ~u_input.c), reverseBits(u_input.c)));
    var var_2 = _wgslsmith_f_op_f32(floor(357f));
    var var_3 = ~_wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, arg_0), countOneBits(vec2<u32>(u_input.a, arg_0))), _wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(111352u, arg_0)) ^ countOneBits(vec2<u32>(0u, u_input.a)), vec2<u32>(~u_input.b, 1u)), vec2<u32>(~(u_input.a ^ arg_0), ~select(u_input.a, 4294967295u, var_0.b.x)));
    return u_input.c.x | -40543i;
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    var var_0 = -214f;
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2004f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, -267f, 1000f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(942f, -1039f, 889f), vec3<f32>(-1119f, -1264f, 316f), arg_0.x)))))), -firstLeadingBit(vec4<i32>(u_input.c.x, arg_1, 30409i, arg_2.x) << (abs(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u)) % vec4<u32>(32u))), u_input.c);
    var_1 = Struct_4(Struct_3(1000f, var_1.a.b), ~_wgslsmith_sub_vec4_i32(var_1.b >> (abs(vec4<u32>(u_input.b, u_input.b, 24782u, 49921u)) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 3626i, u_input.c.x, var_1.b.x), vec4<i32>(40010i, 1i, arg_1, arg_2.x)), vec4<i32>(arg_2.x, 13240i, arg_1, -26003i), vec4<bool>(arg_3, arg_3, false, arg_0.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(~arg_1 & _wgslsmith_mod_i32(69080i, -2147483647i), arg_2.x, u_input.c.x), reverseBits(~vec3<i32>(u_input.c.x, 42413i, -33610i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(68535u, u_input.a, 1u), vec3<u32>(u_input.a, 27803u, u_input.a)) % vec3<u32>(32u)))));
    var var_2 = Struct_4(var_1.a, (-select(var_1.b, var_1.b, arg_3) & -(var_1.b >> (vec4<u32>(u_input.a, 8227u, 0u, 4294967295u) % vec4<u32>(32u)))) << (vec4<u32>(~u_input.b >> (u_input.a % 32u), firstLeadingBit(~0u), u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec3_i32(~(vec3<i32>(-1i, 0i, arg_2.x) << (vec3<u32>(u_input.a, 4294967295u, 9992u) % vec3<u32>(32u))) << (vec3<u32>(0u, _wgslsmith_mod_u32(1u, u_input.b), ~0u) % vec3<u32>(32u)), min(~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -36936i, -28955i), vec3<i32>(1i, -15923i, 0i), arg_2), countOneBits(_wgslsmith_div_vec3_i32(var_1.b.yzw, vec3<i32>(0i, var_1.b.x, arg_1))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1478f, _wgslsmith_f_op_f32(min(var_2.a.b.x, -1151f)), _wgslsmith_f_op_f32(f32(-1f) * -1980f)))), vec3<bool>(true, all(vec3<bool>(arg_0.x, any(vec4<bool>(true, true, arg_0.x, true)), true)), arg_3), _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.b, u_input.b)), ~vec3<u32>(u_input.a, 1663u, 24860u))) < ~4294967295u);
    return ~_wgslsmith_add_u32(4294967295u, u_input.b);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> vec2<u32> {
    return vec2<u32>(func_3(vec2<bool>(true, !(!arg_0)), _wgslsmith_mod_i32(-7576i, 13657i), vec3<i32>(arg_1, -(u_input.c.x << (1862u % 32u)), func_2(u_input.b, arg_2.x)), true), u_input.b & firstLeadingBit(u_input.b));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(165f - -439f), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))), -1063f, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~_wgslsmith_div_u32(11025u, 39925u))) >= ~(~u_input.a);
    var var_1 = false;
    var var_2 = Struct_4(func_4(max(max(~vec2<u32>(0u, 27880u), vec2<u32>(104556u, u_input.b)), abs(func_1(false, u_input.c.x, vec4<f32>(206f, -519f, 965f, 557f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1544f)), -600f, _wgslsmith_f_op_f32(sign(-636f)), _wgslsmith_div_f32(-211f, -527f)))), select(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-25472i, u_input.c.x, -22265i, u_input.c.x), vec4<i32>(46893i, u_input.c.x, u_input.c.x, -8823i))), abs(vec4<i32>(u_input.c.x, u_input.c.x, 33970i, -33253i)), vec4<bool>(true, true, true, true)) | _wgslsmith_add_vec4_i32(select(-vec4<i32>(-2147483647i, 0i, 31316i, u_input.c.x), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), any(vec3<bool>(false, true, true))), _wgslsmith_mod_vec4_i32(vec4<i32>(-27369i, 0i, 0i, u_input.c.x), vec4<i32>(u_input.c.x, 1i, 0i, u_input.c.x) | vec4<i32>(13412i, u_input.c.x, u_input.c.x, u_input.c.x))), ~_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(50577i, u_input.c.x, 31462i)), u_input.c, u_input.c));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b.x, -355f, _wgslsmith_f_op_f32(max(251f, _wgslsmith_f_op_f32(-1000f + var_2.a.a))), -172f)));
    var_1 = !any(vec2<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(155f - var_2.a.b.x) >= _wgslsmith_f_op_f32(sign(-907f))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1884f - var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2393f))), _wgslsmith_f_op_f32(round(-574f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -553f), 185f, var_3.x) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-632f, var_2.a.a, var_2.a.a, 2244f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a, var_3.x, -1235f, -239f) - vec4<f32>(151f, var_2.a.b.x, -854f, -178f)), true)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1120f, _wgslsmith_f_op_f32(sign(var_2.a.a)), 318f, var_3.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.b.x, var_3.x, var_3.x, var_2.a.a))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1424f, 258f, var_3.x)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_2.a.b.x, 1272f, -1294f))))));
    var_2 = Struct_4(var_2.a, vec4<i32>(~(~(-1i)), ~(~min(u_input.c.x, -22575i)), var_2.c.x, var_2.b.x), vec3<i32>(2147483647i, 2147483647i, 12242i));
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.a, u_input.b));
}

