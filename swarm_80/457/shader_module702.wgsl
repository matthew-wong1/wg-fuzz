struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: u32) -> i32 {
    var var_0 = Struct_2(vec2<bool>(all(vec3<bool>(true, select(true, true, false), all(vec4<bool>(false, false, true, true)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, 35649u, arg_0.c.x), vec3<u32>(0u, 17723u, arg_0.c.x)) >= arg_0.a.x), _wgslsmith_f_op_f32(-1120f - _wgslsmith_div_f32(arg_0.d, arg_0.d)), Struct_1(firstLeadingBit(select(u_input.a & u_input.a, _wgslsmith_sub_vec4_i32(arg_0.b.a, arg_0.b.a), vec4<bool>(true, true, false, true))), min(vec2<i32>(1i, 1i), arg_0.b.a.yy), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~arg_2, _wgslsmith_mod_u32(7996u, arg_2)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.x, arg_2, 18158u)), _wgslsmith_add_vec3_u32(arg_1, vec3<u32>(arg_1.x, 81566u, arg_0.a.x))))));
    var_0 = Struct_2(!var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.d)))) - arg_0.d)), Struct_1(~vec4<i32>(2099i ^ u_input.a.x, i32(-1i) * -2147483647i, _wgslsmith_add_i32(54395i, -2147483647i), 1i), min(select(~vec2<i32>(37562i, var_0.c.b.x), vec2<i32>(u_input.b, 38249i), select(vec2<bool>(false, false), vec2<bool>(var_0.a.x, false), var_0.a.x)), _wgslsmith_div_vec2_i32(arg_0.b.a.xw, vec2<i32>(arg_0.b.a.x, u_input.c.x))), arg_1.x));
    var_0 = Struct_2(!(!var_0.a), _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 187f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-253f, -156f)) + _wgslsmith_f_op_f32(var_0.b - arg_0.d))))), arg_0.b);
    let var_1 = true;
    let var_2 = select(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2, 31335u, var_0.c.c, arg_1.x) ^ ~vec4<u32>(arg_0.b.c, 11428u, 0u, 18238u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, var_0.c.c, arg_0.c.x), vec4<u32>(35358u, arg_0.c.x, 1u, var_0.c.c))) ^ vec4<u32>(abs(_wgslsmith_sub_u32(1u, arg_1.x)), arg_0.b.c, select(_wgslsmith_clamp_u32(arg_1.x, arg_0.b.c, arg_1.x), 1u, false), _wgslsmith_dot_vec3_u32(select(arg_1, arg_1, vec3<bool>(var_1, true, false)), ~vec3<u32>(arg_0.c.x, arg_1.x, var_0.c.c))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, select(var_0.c.c, var_0.c.c, var_1), 19400u, var_0.c.c), vec4<u32>(min(arg_0.c.x, var_0.c.c), arg_0.a.x, ~72077u, arg_0.c.x)) << (firstTrailingBit(~(~vec4<u32>(0u, arg_1.x, arg_1.x, arg_2))) % vec4<u32>(32u)), var_0.a.x);
    return arg_0.b.b.x;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = vec4<i32>(~(-24619i), u_input.c.x, u_input.a.x, arg_1.c.a.x);
    let var_1 = 485f;
    let var_2 = func_3(Struct_4(firstLeadingBit(~vec2<u32>(38676u, 4294967295u)), arg_1.c, vec2<u32>(~63021u, ~570u) | vec2<u32>(arg_1.c.c, arg_1.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-408f * arg_0) + -639f)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.c.c, select(11250u, 36479u, arg_1.a.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c.c, 6618u), vec2<u32>(62321u, arg_1.c.c))), _wgslsmith_div_u32(40970u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 53912u), vec2<u32>(arg_1.c.c, 18473u)), ~arg_1.c.c)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(0u, arg_1.c.c), _wgslsmith_mod_u32(arg_1.c.c, 4294967295u))), _wgslsmith_dot_vec4_u32((~vec4<u32>(arg_1.c.c, 0u, arg_1.c.c, 1u) << (vec4<u32>(76751u, arg_1.c.c, arg_1.c.c, 58003u) % vec4<u32>(32u))) << (~vec4<u32>(40415u, 0u, 13082u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1.c.c, arg_1.c.c), arg_1.c.c << (1u % 32u)), _wgslsmith_mod_u32(~arg_1.c.c, ~arg_1.c.c), 1u, 4294967295u)));
    var var_3 = arg_1.c.c ^ 0u;
    var var_4 = (firstTrailingBit(_wgslsmith_mod_i32(arg_1.c.b.x, 13231i)) | abs(5898i)) ^ _wgslsmith_dot_vec4_i32(~(-_wgslsmith_div_vec4_i32(arg_1.c.a, u_input.a)), u_input.a);
    return vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(arg_1.c.c), ~abs(arg_1.c.c), arg_1.c.c), ~(vec3<u32>(arg_1.c.c, 0u, 39115u) ^ select(vec3<u32>(1u, arg_1.c.c, arg_1.c.c), vec3<u32>(arg_1.c.c, 31957u, 47153u), arg_1.a.x))), 1u);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), u_input.c.x, ~abs(~1i)), -vec3<i32>(_wgslsmith_clamp_i32(arg_2.x, 1i, -2147483647i), arg_2.x, _wgslsmith_mult_i32(~u_input.b, 0i)));
    var var_1 = u_input.a.zxy;
    var_0 = ~vec3<i32>(var_1.x << (4294967295u % 32u), ~(-14097i), -9654i);
    var_0 = u_input.c;
    let var_2 = select(abs(~(arg_1.x << (arg_1.x % 32u))) <= min(~(~21776u), arg_1.x), any(vec3<bool>(true, select(any(vec4<bool>(false, false, false, true)), select(true, false, false), any(vec4<bool>(false, true, false, true))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)))), true);
    return Struct_1(u_input.a, vec2<i32>(4433i, var_1.x >> (arg_1.x % 32u)), arg_1.x);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f * -158f)))), _wgslsmith_f_op_f32(-575f + 803f), _wgslsmith_f_op_f32(-1266f - -209f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-481f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(494f, -522f))))), firstLeadingBit(func_2(_wgslsmith_f_op_f32(160f - -289f), Struct_2(vec2<bool>(false, true), -457f, Struct_1(vec4<i32>(-34107i, -6074i, 2147483647i, u_input.c.x), vec2<i32>(u_input.b, u_input.c.x), 4294967295u)))) & min(select(vec2<u32>(1u, 1u), select(vec2<u32>(1u, 4294967295u), vec2<u32>(3426u, 36067u), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), vec2<u32>(~133617u, _wgslsmith_mod_u32(130498u, 4294967295u))), vec2<i32>(func_3(Struct_4(~vec2<u32>(15099u, 57541u), Struct_1(vec4<i32>(u_input.b, u_input.c.x, -28258i, 2147483647i), vec2<i32>(33387i, -32702i), 0u), vec2<u32>(6151u, 4294967295u), _wgslsmith_f_op_f32(floor(-2012f))), vec3<u32>(1u, 1u, 1u), ~(~0u)), reverseBits(min(_wgslsmith_mod_i32(u_input.a.x, u_input.c.x), abs(u_input.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1910f, 137f) * vec2<f32>(-1160f, 1694f)))));
    return Struct_2(select(vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(true, true), all(vec2<bool>(true, true))), 1f, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -u_input.c.x;
    var var_2 = Struct_3(~firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(-2147483647i, var_0.c.b.x))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(7076u, 0u, 1u, 15636u), vec4<u32>(var_0.c.c, var_0.c.c, var_0.c.c, 4294967295u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.c, 11760u, var_0.c.c, var_0.c.c), ~vec4<u32>(4132u, 4294967295u, var_0.c.c, 4294967295u)) % vec4<u32>(32u))), min(var_0.c.a.x, _wgslsmith_clamp_i32(1i, -countOneBits(var_1), var_1 << (firstTrailingBit(var_0.c.c) % 32u))));
    var var_3 = Struct_4(var_2.b.yy, Struct_1(firstTrailingBit(reverseBits(~vec4<i32>(var_2.c, u_input.a.x, 1i, 0i))), vec2<i32>(79345i, firstLeadingBit(u_input.c.x)), ~_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(var_2.b.x, var_0.c.c), _wgslsmith_dot_vec3_u32(var_2.b.yzy, var_2.b.wzy))), var_2.b.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(min(-2672f, _wgslsmith_f_op_f32(-var_0.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) * _wgslsmith_f_op_f32(-195f + var_0.b))));
    var var_4 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.d, 1289f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.d, 398f)))), _wgslsmith_f_op_f32(min(-2558f, -409f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - -1287f)), ~vec2<u32>(~var_3.b.c, 31479u), vec2<i32>(i32(-1i) * -42118i, ~0i), vec2<f32>(_wgslsmith_div_f32(-1212f, var_0.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(460f - _wgslsmith_f_op_f32(var_0.b * var_0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

