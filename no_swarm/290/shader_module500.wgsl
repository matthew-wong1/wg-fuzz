struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(496f, vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: u32) -> bool {
    return 19238u > ~arg_3;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = firstLeadingBit(~vec2<u32>(6567u, global1.x));
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(0u, 68344u, 4294967295u, 17231u)), vec4<u32>(0u, u_input.a, _wgslsmith_div_u32(var_0.x, 1u), global1.x)), vec4<u32>(~countOneBits(global1.x), _wgslsmith_add_u32(~6266u, ~global1.x), 15738u, 4294967295u));
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_add_u32(1u, 1u), firstLeadingBit(abs(38076u)));
    var var_3 = arg_2;
    var var_4 = global2[_wgslsmith_index_u32(abs(global1.x), 20u)];
    return select(select(global0.c, arg_3.c, vec2<bool>(true, !select(arg_2.b.x, arg_3.c.x, true))), !var_3.c, vec2<bool>(u_input.a == 21852u, any(vec2<bool>(false, var_4.c.x & arg_2.c.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-962f))) * global0.a), !select(func_3(-26141i, _wgslsmith_add_vec3_i32(vec3<i32>(-11831i, 51686i, 27026i), vec3<i32>(49709i, -17199i, -2147483647i)), arg_1, Struct_1(-434f, vec2<bool>(arg_1.c.x, true), global0.c)), vec2<bool>(any(vec3<bool>(true, arg_1.c.x, false)), !arg_2), !vec2<bool>(true, global0.c.x)), global0.c);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~10107u, ~(~_wgslsmith_div_u32(56276u, u_input.a))), ~(~vec2<u32>(u_input.a, global1.x)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), 20u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(-1776f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a * -1171f))))), global0.b, select(vec2<bool>(true, var_0.b.x), vec2<bool>(all(select(vec4<bool>(false, false, var_0.b.x, var_0.c.x), vec4<bool>(true, arg_3, arg_1.b.x, false), vec4<bool>(true, global0.b.x, true, arg_0.x))), any(vec2<bool>(false, false))), true));
    var_2 = arg_1;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), 2259f);
    return vec4<bool>((all(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(false, false, true), var_2.b.x)) && (func_1(vec4<i32>(10480i, 2147483647i, 1i, -1i), -118f, 25206i, u_input.a) | (var_1.a != arg_1.a))) & arg_1.b.x, all(!vec4<bool>(global1.x < u_input.a, true, any(vec3<bool>(var_0.b.x, false, var_1.c.x)), false)), true, arg_1.b.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = abs(abs(~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 8227u, u_input.a), vec3<u32>(48945u, 40530u, 92058u)), ~vec3<u32>(u_input.a, global1.x, global1.x), vec3<u32>(4294967295u, 18869u, u_input.a))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(-1000f)), global0.c, !(!vec2<bool>(func_3(-2147483647i, vec3<i32>(arg_1, arg_1, -2147483647i), Struct_1(arg_3.a, global0.b, vec2<bool>(true, true)), global2[_wgslsmith_index_u32(0u, 20u)]).x, false)));
    var var_2 = reverseBits(~firstLeadingBit(-vec4<i32>(2179i, 18830i, arg_1, arg_1))) << (abs(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 41329u, global1.x), vec4<u32>(global1.x, global1.x, u_input.a, var_0.x), vec4<u32>(0u, 69017u, global1.x, u_input.a)), vec4<u32>(32690u, global1.x, 6049u, var_0.x) | vec4<u32>(var_0.x, 1u, 48984u, 50010u), vec4<u32>(global1.x, 14034u, var_0.x, 47369u) ^ vec4<u32>(113430u, u_input.a, 4294967295u, var_0.x))) % vec4<u32>(32u));
    var var_3 = ~vec4<u32>(9952u, 27475u << (~select(global1.x, var_0.x, true) % 32u), 8726u, 1u);
    global2 = array<Struct_1, 20>();
    return -(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, var_2.x), vec4<i32>(var_2.x, arg_1, 1i, 0i)), -vec4<i32>(-32007i, 1i, -1i, 50145i)), ~arg_1, abs(_wgslsmith_mod_i32(12747i, arg_1))) & _wgslsmith_clamp_vec4_i32(max(vec4<i32>(-4572i, var_2.x, var_2.x, -29261i), vec4<i32>(35992i, arg_1, arg_1, arg_1)), _wgslsmith_mod_vec4_i32(vec4<i32>(-7974i, -10565i, 53633i, -7173i), ~vec4<i32>(25937i, 2147483647i, arg_1, -1i)), min(firstTrailingBit(vec4<i32>(0i, -1i, -1i, var_2.x)), vec4<i32>(-26820i, 2147483647i, arg_1, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a, 4112u, ~u_input.a, 1u), vec4<u32>(0u, global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 2819u, 34735u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), ~global1.x), vec4<u32>(~global1.x, ~0u, u_input.a, ~global1.x)), ~(select(vec4<u32>(global1.x, 11135u, u_input.a, 4294967295u), vec4<u32>(40455u, global1.x, 22215u, global1.x), global0.c.x) ^ vec4<u32>(u_input.a, 4294967295u, u_input.a, 3713u)) | max(_wgslsmith_mult_vec4_u32(~vec4<u32>(45599u, 9986u, global1.x, 1u), vec4<u32>(global1.x, u_input.a, global1.x, 4294967295u)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(9439u, u_input.a, 18887u, global1.x)), vec4<u32>(u_input.a, 1u, 0u, global1.x) ^ vec4<u32>(11286u, global1.x, u_input.a, global1.x))));
    global0 = Struct_1(2284f, !select(!select(global0.b, global0.b, vec2<bool>(true, global0.c.x)), vec2<bool>(all(vec3<bool>(true, true, true)), true), select(global0.b.x | false, false, func_1(vec4<i32>(24300i, 6371i, 2147483647i, 12582i), global0.a, 46971i, 7856u))), !(!select(select(global0.c, vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(global0.b.x, false)), global0.c, !vec2<bool>(global0.c.x, true))));
    global0 = global2[_wgslsmith_index_u32(~(~(~(~global1.x)) | 26067u), 20u)];
    var var_1 = global2[_wgslsmith_index_u32(1u >> (var_0.x % 32u), 20u)];
    let var_2 = vec2<f32>(165f, -294f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -647f), func_4(select(!func_2(global0.c, global2[_wgslsmith_index_u32(global1.x, 20u)], global0.c.x, false), select(!vec4<bool>(var_1.b.x, true, var_1.c.x, var_1.b.x), func_2(var_1.b, Struct_1(-140f, var_1.b, global0.c), global0.c.x, false), !vec4<bool>(global0.c.x, global0.b.x, true, false)), !(!vec4<bool>(var_1.c.x, var_1.b.x, true, false))), -15594i, !select(vec2<bool>(false, global0.b.x), global0.b, vec2<bool>(true, global0.b.x)), global2[_wgslsmith_index_u32(reverseBits(~77758u & _wgslsmith_mult_u32(var_0.x, var_0.x)), 20u)]));
}

