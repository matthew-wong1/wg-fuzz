struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    let var_0 = !vec3<bool>(select(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)))), select(false, true, select(true, true, false)), true);
    let var_1 = Struct_4(!(!select(!vec4<bool>(var_0.x, var_0.x, false, false), !vec4<bool>(var_0.x, true, true, var_0.x), true)), vec3<u32>(0u, ~0u, min(_wgslsmith_mod_u32(max(4294967295u, 10048u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 62035u, 1u), vec3<u32>(24498u, 1u, 0u))), 1u)), u_input.c.yxx, 32170u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(1071f * -1278f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1062f, -1235f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, -532f) - vec2<f32>(1491f, -569f))), false)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(488f, 212f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1919f, -925f)), !var_0.zy)) + vec2<f32>(-505f, _wgslsmith_f_op_f32(1251f * 383f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, var_2.x))), vec2<f32>(var_2.x, var_2.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2151f, 712f), vec2<f32>(1000f, 1970f), var_0.xy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-791f, var_2.x) + vec2<f32>(466f, var_2.x))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x))));
    return ~_wgslsmith_clamp_u32(var_1.d, ~4294967295u, _wgslsmith_sub_u32(~var_1.b.x, var_1.b.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = u_input.b;
    let var_1 = Struct_2(arg_1.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, 1798f, arg_2.a.x)))))), arg_2.a.x);
    let var_2 = reverseBits(_wgslsmith_clamp_u32(arg_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(40912u, arg_0.x, 101932u, arg_0.x), vec4<u32>(49618u, 7728u, arg_0.x, arg_0.x)), ~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 14201u)), vec4<u32>(select(0u, arg_0.x, false), func_3(), ~arg_0.x, arg_0.x ^ arg_0.x)), reverseBits(0u)));
    var var_3 = abs(countOneBits(arg_1.x));
    let var_4 = _wgslsmith_mult_vec4_u32(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, var_2, 1u), vec4<u32>(var_2, arg_0.x, 78481u, 28083u)) & vec4<u32>(23720u, arg_0.x, 1u, 1u))), countOneBits(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_2, arg_0.x), var_2 >> (0u % 32u)), arg_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_0.x, 77711u, var_2), _wgslsmith_add_vec4_u32(vec4<u32>(46916u, 0u, arg_0.x, var_2), vec4<u32>(var_2, var_2, 0u, 1u))), var_2)));
    return ~_wgslsmith_div_u32(28781u, arg_0.x);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<u32>(~firstLeadingBit(1u), _wgslsmith_sub_u32(~(~4294967295u), 4294967295u), ~(func_2(~vec3<u32>(6790u, 50552u, 522u), -u_input.c, Struct_1(vec3<f32>(-942f, -1968f, -252f))) | 59333u));
    let var_1 = false;
    var var_2 = vec3<i32>(u_input.a, -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-8451i, u_input.c.x, -1090i), vec3<i32>(-20731i, u_input.a, u_input.a)), u_input.c.xxy ^ vec3<i32>(u_input.c.x, u_input.a, -2147483647i)), -1i), _wgslsmith_clamp_i32(-reverseBits(70739i), abs(u_input.b), _wgslsmith_mult_i32(min(min(-2147483647i, -1i), u_input.c.x), u_input.b)));
    let var_3 = firstLeadingBit(var_0.xz);
    var var_4 = Struct_4(vec4<bool>(!(!(!var_1)), var_1, firstLeadingBit(-1i) >= var_2.x, true), _wgslsmith_mult_vec3_u32(vec3<u32>(~(var_3.x ^ var_0.x), var_0.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(1454u, var_3.x), var_0.x)), vec3<u32>(1u, 4294967295u, 2293u)), min(u_input.c.yyz, countOneBits(~u_input.c.yxw)) >> (countOneBits(~(vec3<u32>(4294967295u, 16331u, 4294967295u) & vec3<u32>(4294967295u, var_0.x, var_3.x))) % vec3<u32>(32u)), var_0.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1626f, 1000f, -1024f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(266f, 343f, -2156f)))), vec3<f32>(1f, 1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_div_i32(~(-5160i), abs(u_input.a)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1255f, -1159f, false)), -1649f))))));
    var var_1 = Struct_3(any(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2950f, -897f, _wgslsmith_f_op_f32(exp2(var_0.c)))))), ~u_input.c.yy);
    let var_2 = func_1();
    let var_3 = firstLeadingBit(~(~(1u >> (1u % 32u)))) ^ _wgslsmith_clamp_u32(_wgslsmith_add_u32(func_3(), ~60955u) ^ ~93082u, countOneBits(~(~44194u)), reverseBits(func_2(vec3<u32>(1u, 34050u, 1u), vec4<i32>(var_1.c.x, -16327i, var_1.c.x, 0i), Struct_1(var_1.b.a))) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(53442u, 13328u, 4294967295u), vec3<u32>(1u, 28773u, 38854u)) % 32u));
    var_1 = Struct_3(true, func_1(), -select(abs(-var_1.c), vec2<i32>(var_0.a, u_input.c.x), !any(vec3<bool>(true, var_1.a, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a, var_3);
}

