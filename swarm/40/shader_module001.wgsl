struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(-289f, -901f), vec3<u32>(66625u, 50183u, 0u), vec3<bool>(false, true, false), vec3<i32>(0i, 13056i, -72872i), vec2<u32>(18813u, 4294967295u)), Struct_1(vec2<f32>(-116f, -1808f), vec3<u32>(24453u, 4294967295u, 0u), vec3<bool>(true, true, false), vec3<i32>(-40129i, -35419i, 0i), vec2<u32>(59497u, 4294967295u)), vec2<i32>(1i, 2540i), 2329u);

var<private> global2: array<i32, 26> = array<i32, 26>(-23399i, -17410i, 1i, 2147483647i, 7979i, -44340i, 28233i, 2851i, 2147483647i, -4473i, -1875i, 0i, 2147483647i, 36365i, 0i, -58359i, 0i, -2875i, 15553i, 11586i, i32(-2147483648), -97020i, 2147483647i, 2147483647i, 0i, -1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    return Struct_3(global1.b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    global0 = _wgslsmith_clamp_u32(u_input.a, arg_2, ~global1.b.b.x);
    var var_0 = -vec4<i32>(global2[_wgslsmith_index_u32(~((global1.d ^ 0u) ^ 48855u), 26u)], 28126i, 2147483647i, reverseBits(countOneBits(-arg_0)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f - -2359f) - 1000f), 569f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.x + 466f) * _wgslsmith_f_op_f32(1264f + 1000f))), 248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b.a.x, global1.b.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - arg_1.a.x)), _wgslsmith_f_op_f32(round(274f))));
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2.wyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.wzz - vec3<f32>(-1000f, var_2.x, 494f)) - var_2.wyx)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.yyx) * _wgslsmith_f_op_vec3_f32(var_2.www - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1946f, 1000f, var_1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1440f) + _wgslsmith_f_op_f32(-256f - 428f)), 220f, -1000f))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.a.x, global1.b.a.x, arg_2))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(1328f + arg_2), _wgslsmith_f_op_f32(max(1061f, -288f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a.x, -215f, global1.a.a.x) + vec3<f32>(-469f, global1.b.a.x, global1.b.a.x)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-663f, arg_3.a.a.x)), -352f, _wgslsmith_f_op_f32(step(1000f, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(666i, arg_3.a, 12268u)))) - vec3<f32>(arg_2, 916f, _wgslsmith_f_op_f32(min(-1000f, arg_2)))));
    var var_1 = max(~arg_3.a.b.yz, _wgslsmith_div_vec2_u32(vec2<u32>(~arg_3.a.e.x, 0u), arg_3.a.b.zz));
    var var_2 = ~firstTrailingBit(arg_3.a.b.yy);
    let var_3 = arg_3;
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(arg_3.a.d.x, Struct_1(vec2<f32>(arg_3.a.a.x, -1000f), vec3<u32>(14660u, 7178u, arg_3.a.e.x), arg_3.a.c, vec3<i32>(1i, global1.c.x, var_3.a.d.x), arg_3.a.b.xy), 4294967295u)).zz)), select(_wgslsmith_mult_vec3_u32(arg_3.a.b, abs(var_3.a.b)), _wgslsmith_div_vec3_u32(global1.a.b, ~var_3.a.b), func_1(all(vec2<bool>(var_3.a.c.x, arg_3.a.c.x)), true, var_3.a.c.yy, _wgslsmith_f_op_vec3_f32(func_3(-2147483647i, global1.a, 4294967295u)).x).a.c), func_1(!(!arg_1), any(vec2<bool>(true, false)), !select(global1.a.c.yz, var_3.a.c.xz, vec2<bool>(true, false)), arg_3.a.a.x).a.c, abs(_wgslsmith_sub_vec3_i32(-vec3<i32>(global1.a.d.x, global1.b.d.x, var_3.a.d.x), arg_3.a.d)), select(var_3.a.b.zz, vec2<u32>(4294967295u, arg_0), !arg_3.a.c.yx)), Struct_1(global1.a.a, vec3<u32>(70879u, _wgslsmith_dot_vec2_u32(var_3.a.b.xx, global1.b.b.xy), var_3.a.b.x ^ arg_0) << (var_3.a.b % vec3<u32>(32u)), func_1(false, true, arg_3.a.c.yx, 494f).a.c, _wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, 1i, var_3.a.d.x), var_3.a.d) ^ vec3<i32>(861i, -38750i, -21745i), arg_3.a.b.zz), -_wgslsmith_mod_vec2_i32(firstTrailingBit(arg_3.a.d.xz), ~arg_3.a.d.yy), select(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 1u, 0u, 50175u), vec4<u32>(arg_3.a.b.x, var_1.x, 1u, 37878u)), ~min(vec4<u32>(arg_0, arg_0, var_3.a.b.x, 0u), vec4<u32>(arg_0, 4294967295u, 4294967295u, 1u))), u_input.a, all(!(!vec4<bool>(true, arg_1, arg_3.a.c.x, arg_3.a.c.x)))));
    return func_1(true, arg_1, vec2<bool>(any(select(vec3<bool>(false, global1.b.c.x, true), func_1(true, arg_1, vec2<bool>(true, arg_1), 1217f).a.c, var_3.a.c.x)), func_1(!(!arg_3.a.c.x), !global1.b.c.x, !select(vec2<bool>(true, var_3.a.c.x), global1.a.c.xy, arg_3.a.c.zy), -200f).a.c.x), _wgslsmith_f_op_f32(trunc(var_0.x))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_2(~1u, true, global1.a.a.x, func_1(false, _wgslsmith_f_op_f32(-1073f - 502f) != _wgslsmith_f_op_f32(global1.a.a.x + global1.b.a.x), global1.b.c.zz, _wgslsmith_f_op_f32(2391f * global1.b.a.x))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, 1569f)), _wgslsmith_f_op_vec2_f32(-global1.a.a))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(570f, global1.b.a.x)))), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, global1.d), vec3<u32>(4294967295u, 0u, 4294967295u)), ~global1.b.b.x), func_2(10846u >> (~u_input.a % 32u), global1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(132f, global1.b.a.x))), func_1(true, !global1.b.c.x, !global1.b.c.xy, -336f)).c, -(~vec3<i32>(5889i, -26781i, global1.b.d.x)), ~(~global1.a.b.zz)), select(_wgslsmith_add_vec2_i32(vec2<i32>(~20984i, -34633i), vec2<i32>(1i, _wgslsmith_clamp_i32(-1i, global2[_wgslsmith_index_u32(61354u, 26u)], 42730i))), -vec2<i32>(global1.a.d.x, global2[_wgslsmith_index_u32(1u, 26u)]), global1.b.c.x), 62004u ^ ~u_input.a);
    var var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(global1.a.b.x, ~81690u, 4294967295u, global1.b.b.x) | max(vec4<u32>(0u, u_input.a, global1.a.b.x, global1.b.e.x), vec4<u32>(50788u, global1.a.b.x, 25851u, 19473u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, 20729u, global1.d), vec4<u32>(u_input.a, global1.d, 75711u, u_input.a))));
    let var_1 = _wgslsmith_mod_i32(-6660i, min(global2[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_mod_i32(~(-27844i), -5213i) >> (u_input.a % 32u)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f + -1048f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2271f, _wgslsmith_div_f32(global1.a.a.x, global1.b.a.x)))), _wgslsmith_f_op_vec3_f32(func_3(1i, func_1(global1.a.c.x & global1.a.c.x, true, select(global1.a.c.xx, vec2<bool>(global1.b.c.x, global1.b.c.x), true), _wgslsmith_f_op_f32(min(-445f, 513f))).a, ~global1.b.b.x << (1u % 32u))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -783f))) - 908f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x)), _wgslsmith_div_f32(-518f, global1.a.a.x), _wgslsmith_f_op_f32(floor(global1.a.a.x)), 1560f) * vec4<f32>(_wgslsmith_f_op_f32(min(-751f, _wgslsmith_div_f32(-798f, global1.b.a.x))), _wgslsmith_f_op_f32(func_1(false, global1.b.c.x, vec2<bool>(true, false), 753f).a.a.x + global1.a.a.x), 502f, _wgslsmith_f_op_f32(max(global1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -848f))))));
    let var_3 = func_1(false, any(vec3<bool>(global1.b.e.x == ~4294967295u, func_1(!global1.b.c.x, !global1.a.c.x, global1.b.c.yy, _wgslsmith_f_op_f32(f32(-1f) * -463f)).a.c.x, global1.b.c.x)), !global1.a.c.zx, _wgslsmith_f_op_f32(f32(-1f) * -744f));
    let var_4 = min(0i, 27771i) ^ global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a.b.x, _wgslsmith_add_u32(~_wgslsmith_mult_u32(var_0.x, global1.a.b.x), 18331u)), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, var_4), -201f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1256f, var_2.x, 1115f, 532f) - vec4<f32>(global1.a.a.x, -634f, 514f, 1125f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_3.a.a.x, 2379f, global1.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, var_3.a.a.x, 372f, global1.b.a.x)))), !select(vec4<bool>(global1.a.c.x, var_3.a.c.x, true, true), vec4<bool>(true, var_3.a.c.x, false, true), select(vec4<bool>(false, false, true, var_3.a.c.x), vec4<bool>(var_3.a.c.x, var_3.a.c.x, var_3.a.c.x, global1.a.c.x), var_3.a.c.x)))));
}

