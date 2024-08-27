struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = 275f;
    var var_1 = vec4<u32>(~_wgslsmith_mult_u32(firstTrailingBit(~arg_0.x), _wgslsmith_div_u32(92992u, arg_0.x)), firstTrailingBit(~1u & arg_0.x), 1u, arg_0.x);
    let var_2 = 22092u;
    var_0 = _wgslsmith_f_op_f32(min(333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1204f + 1000f)) * -1209f))));
    var_0 = -358f;
    return -50068i;
}

fn func_2() -> vec3<bool> {
    let var_0 = !vec4<bool>(_wgslsmith_clamp_i32(min(0i, -48013i), func_3(vec4<u32>(13418u, 8915u, 3094u, 1u)), ~u_input.b.x) >= ~(~u_input.c), true, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true)), true);
    let var_1 = true;
    let var_2 = Struct_2(~_wgslsmith_sub_i32(min(u_input.d.x & 0i, abs(u_input.a)), 1i ^ u_input.c));
    var var_3 = Struct_1(0u, _wgslsmith_clamp_vec3_i32(select(-vec3<i32>(var_2.a, var_2.a, 7907i), u_input.b, all(!var_0)), select(countOneBits(vec3<i32>(1i, 1i, -2147483647i)), vec3<i32>(u_input.b.x, 1790i, u_input.b.x), !var_0.ywy) | vec3<i32>(firstTrailingBit(3455i), var_2.a, max(-17795i, 7398i)), u_input.b), -1164f);
    var var_4 = var_0.x;
    return vec3<bool>(!all(vec3<bool>(all(vec4<bool>(true, false, var_0.x, true)), var_0.x, any(vec3<bool>(var_1, true, true)))), true, true);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    let var_0 = arg_1;
    var var_1 = Struct_1(65229u, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 0i, 41490i | u_input.d.x), vec4<i32>(~u_input.a, firstTrailingBit(u_input.b.x), 1i, u_input.a)), -_wgslsmith_add_i32(~u_input.a, i32(-1i) * -50815i), _wgslsmith_sub_i32(-1i, -(~2147483647i))), 1000f);
    var var_2 = select(vec3<u32>(~1u, ~var_1.a, 41092u), vec3<u32>(_wgslsmith_sub_u32(~(~0u), ~select(var_1.a, 4294967295u, arg_1.x)), 9743u, var_1.a), arg_1);
    var_1 = Struct_1(select(min(1u, var_1.a), 4294967295u, true), _wgslsmith_div_vec3_i32(firstLeadingBit((vec3<i32>(7893i, 1i, u_input.d.x) >> (vec3<u32>(var_1.a, 0u, var_1.a) % vec3<u32>(32u))) & ~vec3<i32>(var_1.b.x, 1i, 1i)), select(vec3<i32>(~1978i, _wgslsmith_mult_i32(u_input.b.x, 1i), var_1.b.x), firstLeadingBit(select(vec3<i32>(2471i, u_input.c, 1i), vec3<i32>(u_input.b.x, -68827i, 1i), var_0)), vec3<bool>(true, false, arg_3.b))), _wgslsmith_f_op_f32(-arg_0.x));
    var_2 = firstLeadingBit(~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(53234u, var_2.x), 14391u), 4294967295u, 1u));
    return arg_3.b;
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(arg_0 + -1047f))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_f32(arg_0 + 1632f)), !func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-arg_0), true)), _wgslsmith_f_op_f32(-437f * -245f), arg_0, _wgslsmith_f_op_f32(arg_0 * -1098f))), Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -241f, 545f, arg_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -1000f))))), select(any(vec4<bool>(true, true, true, true)), true, true)));
    var var_1 = vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(1i, 39378i));
    var_1 = firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -9911i), ~vec2<i32>(u_input.d.x, u_input.c), u_input.d.ww) & _wgslsmith_add_vec2_i32(reverseBits(u_input.d.ww), _wgslsmith_clamp_vec2_i32(u_input.d.zy, u_input.d.xy, u_input.d.yz)), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.d, u_input.d), abs(u_input.d)), -1i)));
    var_0 = true;
    var var_2 = select(~(~vec3<u32>(4294967295u, 70746u, 4294967295u)), vec3<u32>(~(~25931u), ~0u, ~_wgslsmith_clamp_u32(33729u, 15055u, 8178u)), true) & vec3<u32>(1u, 1u, 1u);
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) + 1491f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 1503f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1166f - 378f)))), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, -231f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)))), true != all(vec4<bool>(true, true, true, true)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = select(vec4<bool>(false, abs(~arg_1.x) <= _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-18944i, arg_2.b.x, 26581i, arg_2.b.x)), vec4<i32>(1i, -55982i, 5503i, u_input.d.x)), true, all(vec3<bool>(true, -1000f < arg_0.a.x, all(vec2<bool>(arg_0.b, arg_0.b))))), !(!vec4<bool>(true, true, true, arg_0.b || arg_0.b)), !select(!vec4<bool>(true, arg_0.b, true, true), !(!vec4<bool>(false, arg_0.b, false, arg_0.b)), vec4<bool>(arg_0.b != true, false, false, arg_2.c < arg_0.a.x)));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(33158i, firstTrailingBit(1i)), 75754i, 0i), arg_1.wwy);
    let var_2 = true;
    var var_3 = vec4<u32>((select(select(66175u, arg_2.a, arg_0.b), arg_2.a, !arg_0.b) ^ 35290u) << (_wgslsmith_div_u32(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 4294967295u), vec2<u32>(arg_2.a, 80529u)), 11166u)) % 32u), arg_2.a, arg_2.a, 4294967295u);
    let var_4 = Struct_1(reverseBits(arg_2.a), u_input.d.xxx, arg_0.a.x);
    return Struct_3(arg_0.a, !(!(1559f < arg_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(_wgslsmith_f_op_f32(round(-711f))), vec4<i32>(u_input.b.x, ~u_input.a, 0i, ~8840i | (-u_input.a >> (max(4294967295u, 170368u) % 32u))), Struct_1(4294967295u, ~(-(vec3<i32>(37238i, u_input.b.x, 46129i) >> (vec3<u32>(4294967295u, 0u, 7678u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-564f))))));
    var var_1 = vec3<bool>(!(_wgslsmith_div_u32(firstTrailingBit(4294967295u), abs(0u)) >= _wgslsmith_sub_u32(4294967295u, ~68834u)), !all(vec3<bool>(true, !var_0.b, var_0.a.x >= 662f)), false);
    var var_2 = var_0.a;
    var var_3 = countOneBits(vec3<u32>(~17199u, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(33857u, 1u))));
    var_1 = vec3<bool>(true, !((var_0.b || all(vec3<bool>(var_1.x, var_0.b, true))) && (var_0.b && func_5(var_0, u_input.d, Struct_1(0u, u_input.d.zwz, var_0.a.x)).b)), var_1.x);
    var_2 = var_0.a;
    let var_4 = var_3.x;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -u_input.b.xz, firstLeadingBit(vec4<u32>(60186u, countOneBits(_wgslsmith_div_u32(var_3.x, 984u)), ~(43696u ^ var_3.x), 4294967295u)), var_0.a, max(var_3.x, min(_wgslsmith_sub_u32(156552u, 33987u), ~var_3.x) >> (reverseBits(abs(104784u)) % 32u)), var_3.x);
}

