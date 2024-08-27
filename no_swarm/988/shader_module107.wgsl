struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec2<u32>(u_input.c, u_input.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-590f, -193f, _wgslsmith_f_op_f32(floor(120f)), _wgslsmith_f_op_f32(f32(-1f) * -277f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1681f, -626f, -1070f, -194f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(620f, -647f, -1308f, 1846f) + vec4<f32>(974f, 188f, 441f, 646f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(118f, 507f, 2100f, -557f))))))));
    var var_2 = arg_0;
    var var_3 = vec4<i32>(-25331i, _wgslsmith_dot_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.d.x, -102153i), u_input.d) << (_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.c, 0u, 10079u, 1u), u_input.b) % vec4<u32>(32u)), vec4<i32>(1i, ~u_input.a, _wgslsmith_div_i32(u_input.d.x, u_input.a), -21693i)), -_wgslsmith_mod_vec4_i32(-vec4<i32>(-44434i, u_input.a, u_input.d.x, u_input.a), reverseBits(u_input.d))), _wgslsmith_add_i32(~_wgslsmith_add_i32(select(1i, -37460i, arg_1.x), reverseBits(0i)), -4583i), -(~u_input.a));
    let var_4 = all(vec2<bool>(1u < (var_0.x >> (~21348u % 32u)), true));
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = !select(func_3(Struct_1(true, !arg_0.b, arg_0.c), !select(vec4<bool>(arg_0.a, true, false, var_0.c), vec4<bool>(arg_0.a, var_0.a, false, arg_0.b.x), true), arg_0), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, false, true, var_0.b.x)), -12956i >= ~u_input.d.x), !func_3(Struct_1(true, vec3<bool>(arg_0.b.x, false, arg_0.b.x), false), !vec4<bool>(var_0.a, false, var_0.a, var_0.c), Struct_1(true, var_0.b, true)));
    let var_2 = select(!any(vec2<bool>(any(vec4<bool>(true, false, false, arg_0.a)), !var_0.a)), true, var_0.b.x);
    var var_3 = ~u_input.b;
    var_1 = select(select(!vec4<bool>(all(var_0.b.zx), var_0.a | var_1.x, true, !arg_0.c), !func_3(arg_0, !vec4<bool>(var_2, var_2, false, true), arg_0), func_3(Struct_1(true, select(var_1.zzy, var_0.b, var_0.b.x), var_2), vec4<bool>(var_2 || var_0.b.x, any(vec2<bool>(arg_0.b.x, var_1.x)), true, var_0.b.x & var_2), arg_0)), vec4<bool>(true, true, var_1.x, !((var_1.x || false) && !arg_0.b.x)), all(vec3<bool>(false, any(vec4<bool>(var_2, var_1.x, arg_0.a, var_0.b.x)), !arg_0.c && var_2)));
    return u_input.d;
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(any(!arg_0.b.zz), vec3<bool>(arg_0.b.x, arg_0.a, false), true);
    let var_1 = arg_0;
    var var_2 = ~u_input.b.x;
    let var_3 = ~u_input.d ^ -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 6351i, u_input.d.x, 2147483647i), u_input.d) << (vec4<u32>(u_input.b.x, 67600u, u_input.c, u_input.c) % vec4<u32>(32u)), -(~u_input.d), func_2(Struct_1(var_0.a, var_1.b, true)) << (firstLeadingBit(u_input.b) % vec4<u32>(32u)));
    var_2 = _wgslsmith_sub_u32(firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(41788u, 20802u, u_input.c)), u_input.b.xyz | vec3<u32>(31062u, u_input.b.x, 2156u)))), _wgslsmith_clamp_u32(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), _wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(u_input.c, 17058u))) ^ 9738u, u_input.b.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    var var_1 = ~vec2<u32>(45892u, 10741u);
    var_1 = ~var_0.ww;
    var var_2 = Struct_1(!(select(true, true, true) && true), select(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), 30425u <= var_1.x), select(vec3<bool>(func_1(Struct_1(false, vec3<bool>(true, true, false), false)), any(vec2<bool>(true, true)), true), vec3<bool>(true, true, all(vec2<bool>(true, true))), true), func_1(Struct_1(true, vec3<bool>(false, false, true), true))), true);
    var var_3 = firstLeadingBit(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), u_input.d.zy, vec2<i32>(u_input.a, -1i)) ^ reverseBits(vec2<i32>(u_input.d.x, u_input.d.x)))) | u_input.d.xw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~(~vec2<u32>(firstTrailingBit(102675u), _wgslsmith_dot_vec4_u32(vec4<u32>(28989u, 80854u, 5222u, var_0.x), u_input.b))), -32804i);
}

