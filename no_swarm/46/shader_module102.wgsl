struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 13>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<u32>(23379u, 0u), vec3<i32>(-29936i, -1i, 36676i)), -18021i);

var<private> global4: array<f32, 24> = array<f32, 24>(-114f, -1025f, 1060f, 509f, 458f, 739f, 437f, -140f, 2158f, -858f, 163f, 1189f, -141f, -1012f, 968f, 1411f, -1944f, 1000f, 2283f, -359f, -1285f, 921f, -995f, 377f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> vec4<bool> {
    var var_0 = false;
    return !select(vec4<bool>((0u | u_input.b) >= global3.a.a.x, !arg_1.x || all(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 13u)], false, arg_1.x, true)), arg_1.x & true, _wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(global3.a.a.x, 24u)]) >= _wgslsmith_f_op_f32(817f - global2.x)), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, global1[_wgslsmith_index_u32(abs(abs(global3.a.a.x)), 13u)], arg_1.x), !(!global1[_wgslsmith_index_u32(52241u, 13u)]) && all(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 13u)], arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(false, true, true, arg_1.x), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)], false, false))));
}

fn func_2() -> Struct_1 {
    global0 = -1915f;
    var var_0 = _wgslsmith_div_f32(global2.x, global4[_wgslsmith_index_u32(abs(9516u), 24u)]);
    var var_1 = vec2<bool>(!all(!func_3(Struct_1(global3.a.a, global3.a.b), vec4<bool>(global1[_wgslsmith_index_u32(global3.a.a.x, 13u)], global1[_wgslsmith_index_u32(28020u, 13u)], true, global1[_wgslsmith_index_u32(50759u, 13u)]), u_input.c)), global1[_wgslsmith_index_u32(abs(select(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global3.a.a.x), vec3<u32>(u_input.b, 37803u, global3.a.a.x)), false)) << (firstLeadingBit(firstLeadingBit(u_input.b) | 92230u) % 32u), 13u)]);
    var_0 = _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3.a.a.x, 24u)]);
    let var_2 = !vec3<bool>(!all(func_3(Struct_1(vec2<u32>(46163u, 1u), global3.a.b), vec4<bool>(var_1.x, var_1.x, var_1.x, true), 2147483647i)), select(true, var_1.x, any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 13u)], false, var_1.x, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 13u)], false, var_1.x), false))), global1[_wgslsmith_index_u32(~14161u, 13u)]);
    return Struct_1(max(global3.a.a, max(_wgslsmith_add_vec2_u32(global3.a.a, min(global3.a.a, global3.a.a)), global3.a.a)), ~vec3<i32>(firstLeadingBit(global3.a.b.x), i32(-1i) * -12526i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-66686i, u_input.c, u_input.a), min(-40115i, u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global4 = array<f32, 24>();
    let var_0 = all(select(!(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(arg_0.a.x, 13u)]), vec3<bool>(global1[_wgslsmith_index_u32(39530u, 13u)], true, global1[_wgslsmith_index_u32(0u, 13u)]), false)), func_3(func_2(), func_3(func_2(), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(global3.a.a.x, 13u)], false), 41381i), -global3.a.b.x).zxz, !(!vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 13u)], global1[_wgslsmith_index_u32(arg_1.x, 13u)]))));
    global2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~min(4294967295u, arg_1.x), ~arg_1.x), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-513f)), _wgslsmith_f_op_f32(f32(-1f) * -614f)))), global2.x, _wgslsmith_f_op_f32(-global2.x))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(arg_0.a.x, 24u)], global2.x, 278f, -696f) + vec4<f32>(-1386f, -1991f, -1388f, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(u_input.b, 24u)], global2.x, 179f, -617f) - vec4<f32>(356f, global2.x, -877f, global2.x)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1061f, global2.x, 1200f, -2145f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global3.a.a.x, 24u)], global4[_wgslsmith_index_u32(u_input.b, 24u)], 627f, -447f) + vec4<f32>(-1442f, global2.x, global4[_wgslsmith_index_u32(arg_0.a.x, 24u)], -2704f))))))));
    return func_2();
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = -2147483647i;
    global3 = Struct_2(func_4(func_2(), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(arg_3), arg_3, ~global3.a.a), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_3.x), arg_3) | ~vec2<u32>(45816u, arg_3.x), vec2<u32>(u_input.b, 0u))), -(var_0 & (reverseBits(-44416i) & var_0)));
    global0 = arg_2;
    let var_1 = func_4(global3.a, vec2<u32>(~arg_1, _wgslsmith_mult_u32(countOneBits(min(global3.a.a.x, 53595u)), countOneBits(0u) & func_4(global3.a, arg_3).a.x)));
    return Struct_1(~(~max(vec2<u32>(28802u, 80167u), vec2<u32>(1u, 38444u))) & var_1.a, vec3<i32>(countOneBits(~var_1.b.x ^ var_1.b.x), _wgslsmith_sub_i32(~(var_0 << (4294967295u % 32u)), firstLeadingBit(firstLeadingBit(1684i))), -1i));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    global3 = Struct_2(func_2(), firstLeadingBit(_wgslsmith_dot_vec2_i32(-(~global3.a.b.yy), min(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2, arg_1.b.x), vec2<i32>(u_input.a, u_input.a)), arg_1.b.xz))));
    var var_0 = vec3<u32>(1u, ~4294967295u, func_1(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global3.a.a, arg_1.a), 24u)]), 0u | (max(1u, 1u) << (~global3.a.a.x % 32u)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global3.a.a, ~vec2<u32>(global3.a.a.x, u_input.b)), 24u)], select(~reverseBits(vec2<u32>(0u, 4294967295u)), _wgslsmith_mod_vec2_u32(arg_1.a >> (vec2<u32>(global3.a.a.x, 1u) % vec2<u32>(32u)), max(global3.a.a, arg_1.a)), !vec2<bool>(global1[_wgslsmith_index_u32(global3.a.a.x, 13u)], global1[_wgslsmith_index_u32(6019u, 13u)]))).a.x);
    var_0 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(func_4(arg_1, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.x, u_input.b), vec2<u32>(global3.a.a.x, arg_1.a.x))).a, var_0.xy), ~75436u & _wgslsmith_sub_u32(4294967295u, ~global3.a.a.x), ~55443u);
    global2 = vec4<f32>(606f, _wgslsmith_f_op_f32(295f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) + -378f))), global2.x, -1000f);
    var var_1 = vec3<u32>(89150u, countOneBits(101328u), 45206u);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.b;
    global0 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-626f, ~(func_5(global2.xx, func_1(global4[_wgslsmith_index_u32(u_input.b, 24u)], 16766u, -1000f, vec2<u32>(1u, 43629u)), -23621i) >> (u_input.b % 32u)));
}

