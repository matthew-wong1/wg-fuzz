struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = select(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, 2597i) ^ arg_2.a.xy, ~arg_2.a.yw), -14256i, i32(-1i) * -17199i)), arg_2.a.wzw, arg_2.c);
    var var_1 = arg_0.yx;
    var_0 = vec3<i32>(~22975i, -(var_0.x | -1i), arg_2.a.x);
    var var_2 = ~arg_1;
    let var_3 = Struct_1(~(~arg_2.a), arg_2.c, arg_2.c);
    return max(_wgslsmith_mult_u32(~(~1u), ~(~_wgslsmith_mult_u32(0u, u_input.a.x))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1074u, 0u, 1u, 0u), ~vec4<u32>(36820u, 32415u, 4294967295u, 4294967295u)), vec4<u32>(arg_1.x, min(u_input.a.x, 35562u), 24880u, 0u)), 45832u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_1(vec4<i32>(1i, ~firstLeadingBit(~0i), (_wgslsmith_sub_i32(33413i, -53467i) & arg_1.a.x) ^ 0i, 1i), select(!vec3<bool>(all(arg_1.b.xz), false, arg_0), vec3<bool>(all(vec4<bool>(false, false, true, arg_0)), !select(false, arg_1.b.x, arg_1.c.x), any(!vec4<bool>(arg_2.x, false, arg_0, arg_1.b.x))), select(vec3<bool>(arg_1.c.x, true, true), arg_1.c, arg_2.x)), arg_1.c);
    let var_1 = arg_1.a;
    return firstLeadingBit(_wgslsmith_mod_vec3_i32(countOneBits(abs(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x)) | vec3<i32>(2147483647i, 0i, var_1.x)), vec3<i32>(-24809i, -13117i, _wgslsmith_sub_i32(13277i, 2147483647i)) & (select(var_0.a.wxx, var_0.a.zzy, false) >> (~vec3<u32>(u_input.a.x, 73455u, 0u) % vec3<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    var var_0 = -abs(func_3(true, Struct_1(~vec4<i32>(-19937i, -19142i, -23109i, -60098i), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec2<bool>(true, false)));
    var_0 = countOneBits(vec3<i32>(var_0.x, _wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(1i, 1i, var_0.x), firstTrailingBit(firstLeadingBit(-38174i)), 1i), 2024i));
    let var_1 = 1u;
    var_0 = -_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.x, -33967i), vec3<i32>(var_0.x, 10049i, var_0.x)), vec3<i32>(-18731i, 1i, var_0.x)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.xx, var_0.yy), _wgslsmith_add_i32(var_0.x, var_0.x)), -13867i, select(var_0.x, -36934i, true) ^ select(var_0.x, -4882i, false)));
    let var_2 = Struct_1(-vec4<i32>(-20904i, func_3(u_input.a.x >= 15025u, Struct_1(vec4<i32>(var_0.x, 1i, var_0.x, 0i), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec2<bool>(false, true)).x, var_0.x, _wgslsmith_mult_i32(8086i, i32(-1i) * -35575i)), vec3<bool>(true, true, true), vec3<bool>(any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), true, !(!all(vec2<bool>(false, true)))));
    return Struct_1(~vec4<i32>(1i, var_2.a.x ^ var_0.x, 2147483647i, var_0.x) ^ vec4<i32>(~8016i, var_0.x, firstTrailingBit(~var_0.x), countOneBits(firstTrailingBit(26225i))), var_2.b, !vec3<bool>(all(var_2.b), !var_2.b.x, all(var_2.b)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(41476u << (arg_0 % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1664f, -625f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, 134f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, _wgslsmith_f_op_f32(f32(-1f) * -430f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-724f * 492f), _wgslsmith_f_op_f32(f32(-1f) * -283f))))));
    let var_2 = -1220f;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(var_1.x, 103f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2 - -1154f), _wgslsmith_div_f32(-1064f, var_1.x))))));
    let var_3 = func_2();
    return Struct_1(-arg_2.a, arg_2.b, vec3<bool>(func_2().b.x, (arg_3.a.x >> (arg_0 % 32u)) != func_2().a.x, true));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    return func_4(~107483u, ~firstLeadingBit(vec2<u32>(38640u, 0u)), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.x, arg_1.a.x, arg_2.a.x, -2147483647i) | arg_1.a, _wgslsmith_mod_vec4_i32(func_2().a, vec4<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_1.a.x))), !arg_2.c, arg_1.c), Struct_1(arg_1.a, !arg_2.c, select(vec3<bool>(any(vec2<bool>(arg_1.c.x, false)), func_4(22078u, vec2<u32>(27488u, 67762u), arg_1, Struct_1(arg_1.a, vec3<bool>(arg_2.b.x, arg_1.c.x, false), vec3<bool>(false, arg_1.b.x, false))).b.x, all(vec4<bool>(arg_2.b.x, false, arg_1.c.x, true))), vec3<bool>(false, arg_2.b.x, arg_1.b.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~_wgslsmith_clamp_u32(1u, 1407u, func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 265f, -578f))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec4<i32>(13863i, 1i, 0i, 13121i), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), func_4(12228u, u_input.a.zw, Struct_1(~reverseBits(vec4<i32>(25740i, -1i, -2147483647i, 1i)), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, false)), func_2()), Struct_1(vec4<i32>(1i, 1i, 1i, 1i), !vec3<bool>(true, true, any(vec2<bool>(true, false))), func_2().c), reverseBits(reverseBits(28608u ^ u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_2 = true;
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.a.zyw, -_wgslsmith_clamp_vec3_i32(var_0.a.wwx, var_0.a.ywz, var_0.a.zww)), func_3(abs(u_input.a.x) < 4294967295u, func_4(u_input.a.x, vec2<u32>(u_input.a.x, 2222u) | u_input.a.wy, Struct_1(var_0.a, var_0.b, vec3<bool>(var_2, var_2, true)), Struct_1(var_0.a, vec3<bool>(true, var_0.b.x, true), var_0.c)), !var_0.c.zx).x, _wgslsmith_mod_i32(var_0.a.x, select(-var_0.a.x, _wgslsmith_dot_vec3_i32(var_0.a.wzy, var_0.a.xxx), var_0.b.x & var_2)), ~var_0.a.x), vec3<bool>(true, !func_5(u_input.a.x, Struct_1(vec4<i32>(var_0.a.x, 1656i, var_0.a.x, -2147483647i), vec3<bool>(false, false, false), vec3<bool>(var_0.c.x, var_2, false)), var_0, 42369u).c.x || true, !(~1u < ~u_input.a.x)), vec3<bool>(var_2, true, any(!vec2<bool>(var_0.b.x, var_0.b.x))));
    var var_4 = Struct_1(select(-vec4<i32>(-var_3.a.x, reverseBits(var_0.a.x), -48552i, var_3.a.x), var_0.a, var_0.c.x), !func_5(1u, Struct_1(var_3.a, var_3.c, func_4(u_input.a.x, vec2<u32>(0u, u_input.a.x), var_0, var_0).c), func_2(), u_input.a.x).c, vec3<bool>(all(select(select(var_3.c.zx, vec2<bool>(var_3.c.x, true), false), !vec2<bool>(var_2, false), !var_0.b.x)), var_3.c.x, false));
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.a, ~(~abs(var_0.a))), _wgslsmith_add_u32(~(~u_input.a.x) ^ 974u, ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(92927u, u_input.a.x, 50662u), u_input.a.xyw), 0u ^ u_input.a.x)));
}

