struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1160f, 558f)))))), 738f);
    let var_1 = _wgslsmith_clamp_i32(arg_0, arg_0, -1i);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-1036f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b)))));
    var var_2 = u_input.b << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(min(min(u_input.b, 2866u), 1u), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23252u, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u) >> (vec3<u32>(1u, 72111u, u_input.b) % vec3<u32>(32u))) << (u_input.b % 32u), u_input.b) % 32u);
    var_0 = Struct_1(var_0.b, _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, var_0.a)), var_0.a, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a * -846f)))))));
    return vec2<u32>(u_input.b, u_input.b);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = arg_1.a;
    var_1 = Struct_2(func_3(var_1.e, abs(vec3<i32>(0i, arg_1.a.e, -53344i)) | reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(-17130i, -47280i, arg_1.a.e)))), ~abs(_wgslsmith_clamp_u32(~19142u, var_1.a.x, arg_1.a.c.x << (arg_1.a.b % 32u))), firstTrailingBit(~func_3(i32(-1i) * -34022i, vec3<i32>(27606i, u_input.a.x, arg_0.a.e))), arg_0.a.d, 21466i);
    var var_2 = 16381u;
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-978f, -143f), vec2<f32>(1250f, -1004f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(326f, arg_1.a.d.b)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1064f, -570f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, var_1.d.a), vec2<f32>(1237f, -484f))))))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))))));
    return ~arg_0.a.c.x;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: u32) -> Struct_3 {
    let var_0 = 0u;
    let var_1 = 11858u;
    let var_2 = ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_2), firstLeadingBit(vec2<u32>(u_input.b, u_input.b))) >> (_wgslsmith_sub_u32(func_2(Struct_3(Struct_2(arg_1.xz, var_0, vec2<u32>(0u, 26899u), Struct_1(212f, -343f), u_input.c)), Struct_3(Struct_2(arg_1.zy, u_input.b, arg_1.xx, Struct_1(-1266f, -1000f), 1i)), Struct_1(-1494f, 948f)), ~var_1) % 32u));
    let var_3 = Struct_2(vec2<u32>(~(~1u), 15935u), var_1, arg_1.yx, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(330f, -1143f)) + _wgslsmith_f_op_f32(-1417f * 198f)) - -1522f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-319f + -734f))))), _wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_sub_i32(~(u_input.a.x >> (var_2 % 32u)), _wgslsmith_clamp_i32(2147483647i, reverseBits(32559i), firstTrailingBit(28024i)))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f - -518f) * var_3.d.b)))), -730f, 457f);
    return Struct_3(Struct_2(vec2<u32>(var_1, ~73752u >> (~4294967295u % 32u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_2, 0u, var_3.b), _wgslsmith_mod_u32(~5423u, ~arg_2)), min(arg_1.zz, ~var_3.c), var_3.d, _wgslsmith_div_i32(~(~(-2147483647i)), u_input.c)));
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = vec3<i32>(58343i, 2147483647i, 2147483647i);
    var var_1 = true;
    let var_2 = select(vec3<bool>(true, false, (false & any(vec2<bool>(false, true))) & true), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec3<bool>(false, _wgslsmith_f_op_f32(select(arg_0.a.d.b, -1206f, true)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-2597f)))), all(vec3<bool>(true, true, true))));
    var var_3 = _wgslsmith_mult_vec4_i32(abs((reverseBits(vec4<i32>(1i, -36473i, arg_0.a.e, u_input.c)) | (vec4<i32>(var_0.x, 2147483647i, arg_0.a.e, var_0.x) << (vec4<u32>(arg_0.a.b, 4294967295u, 13999u, u_input.b) % vec4<u32>(32u)))) >> (((vec4<u32>(u_input.b, arg_0.a.c.x, arg_0.a.a.x, arg_0.a.c.x) << (vec4<u32>(4294967295u, 4294967295u, arg_0.a.b, arg_0.a.c.x) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.a.x, u_input.b, 4294967295u, u_input.b), vec4<u32>(1u, u_input.b, arg_0.a.c.x, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u))), (_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.x, -14837i, 2147483647i, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, 20808i, -13684i), vec4<i32>(-13500i, -2147483647i, arg_0.a.e, 0i), vec4<i32>(9353i, 18293i, 52083i, u_input.a.x))) | vec4<i32>(_wgslsmith_div_i32(arg_0.a.e, -19504i), _wgslsmith_mult_i32(arg_0.a.e, 7282i), u_input.a.x, -u_input.a.x)) & _wgslsmith_sub_vec4_i32(~select(vec4<i32>(arg_0.a.e, -747i, var_0.x, arg_0.a.e), vec4<i32>(arg_0.a.e, 2147483647i, 11867i, 0i), var_2.x), -(~vec4<i32>(var_0.x, 31717i, arg_0.a.e, var_0.x))));
    var_3 = select(-(vec4<i32>(999i, ~var_0.x, u_input.a.x & -1777i, -25827i) & _wgslsmith_div_vec4_i32(vec4<i32>(19867i, arg_0.a.e, 1i, arg_0.a.e), _wgslsmith_mod_vec4_i32(vec4<i32>(-39945i, 32830i, -2147483647i, 0i), vec4<i32>(arg_0.a.e, 0i, 17112i, u_input.c)))), ~vec4<i32>(2147483647i, var_3.x, 0i, func_1(0u, vec3<u32>(arg_0.a.b, arg_0.a.c.x, arg_0.a.b) & vec3<u32>(u_input.b, arg_0.a.a.x, arg_0.a.a.x), ~15534u).a.e), vec4<bool>(true, var_2.x, var_3.x > -1i, true));
    return ~arg_0.a.c;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1458f), -658f);
    var_0 = arg_2.d;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(866f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1841f - _wgslsmith_f_op_f32(var_0.b - 1837f)) - arg_2.d.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.d.a * arg_2.d.a))), 812f, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true)))))));
    var var_1 = ~(-40065i);
    let var_2 = vec3<i32>(u_input.c, arg_2.e, arg_2.e);
    return Struct_3(func_1(_wgslsmith_div_u32(firstTrailingBit(36394u), arg_0.x & _wgslsmith_mod_u32(1u, arg_0.x)), _wgslsmith_div_vec3_u32((vec3<u32>(u_input.b, arg_0.x, 4294967295u) >> (vec3<u32>(1u, 20227u, 10029u) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, arg_2.a.x), vec3<u32>(arg_0.x, u_input.b, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b, arg_0.x, 6717u), vec3<u32>(arg_2.c.x, arg_0.x, 22767u)) | ~vec3<u32>(u_input.b, arg_0.x, 21436u)), ~(~(~arg_0.x))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(_wgslsmith_div_vec2_u32(~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b), true), func_4(func_1(1u, vec3<u32>(u_input.b, u_input.b, 54282u), 1u))), reverseBits(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, u_input.b), min(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 55142u)))), vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1517f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1023f, -178f))))))), func_1(30838u, min(vec3<u32>(~3335u, 1688u, ~u_input.b), ~_wgslsmith_mult_vec3_u32(vec3<u32>(69300u, 4294967295u, u_input.b), vec3<u32>(u_input.b, 71471u, u_input.b))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u)), vec3<u32>(17028u, 29654u, 8512u)), select(~vec3<u32>(24333u, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(u_input.b, 31655u, u_input.b), true))).a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(var_0.a.d.a)), -791f);
    let var_2 = Struct_3(var_0.a);
    var var_3 = _wgslsmith_sub_vec2_u32(firstLeadingBit(var_0.a.a), min(~(vec2<u32>(var_0.a.a.x, 0u) >> (var_0.a.c % vec2<u32>(32u))), ~vec2<u32>(1u, 35930u))) ^ vec2<u32>(~func_5(~var_2.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(408f, var_0.a.d.b) - vec2<f32>(var_0.a.d.b, var_0.a.d.a)), var_0.a).a.c.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.b, var_0.a.c.x, var_0.a.b)), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(var_2.a.c.x, 1u, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.a.x, 1u, var_2.a.a.x), vec3<u32>(4068u, 34656u, var_0.a.c.x)))));
    let var_4 = u_input.c;
    var var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(-13356i);
}

