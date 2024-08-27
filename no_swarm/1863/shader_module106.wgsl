struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(-9552i, vec4<f32>(-636f, 588f, 358f, 181f));

var<private> global2: array<f32, 12>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    global0 = !select(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))) && true;
    let var_0 = false;
    global0 = var_0 & (_wgslsmith_f_op_f32(-global1.b.x) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.x))));
    return u_input.b.x;
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(u_input.c, -(0i >> (u_input.b.x % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1000f - global2[_wgslsmith_index_u32(u_input.b.x, 12u)]), 142f, _wgslsmith_f_op_f32(min(-134f, global2[_wgslsmith_index_u32(63915u, 12u)])), _wgslsmith_f_op_f32(min(global1.b.x, global1.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(577f, global1.b.x, 1531f, -118f))) * vec4<f32>(global1.b.x, -1753f, global2[_wgslsmith_index_u32(81739u, 12u)], 1009f)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))))));
    let var_1 = select(~u_input.a.zx << (~_wgslsmith_div_vec2_u32(vec2<u32>(43074u, 20105u), ~vec2<u32>(4294967295u, u_input.b.x)) % vec2<u32>(32u)), u_input.a.yx, !(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x ^ 28347u, u_input.b.x) >= _wgslsmith_sub_u32(max(u_input.b.x, 1u), ~u_input.b.x)));
    let var_2 = global2[_wgslsmith_index_u32(22787u, 12u)];
    let var_3 = Struct_1(-(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 12u)]))), -936f, global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-569f * -1711f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2031f + 151f)))));
    var var_4 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)));
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> bool {
    var var_0 = 1i;
    let var_1 = Struct_1(select(_wgslsmith_mult_i32(u_input.c, u_input.c), func_3(), all(vec2<bool>(true, true)) & !any(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(global1.b)))) * global1.b)));
    return all(select(vec4<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), true), vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, select(false, true, true), true), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(select(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(global1.a, u_input.a.x)), vec2<i32>(u_input.c, 11485i) & vec2<i32>(global1.a, -22080i)), -(u_input.a.xx ^ vec2<i32>(u_input.a.x, 0i)), vec2<i32>(u_input.a.x, ~(-1i))), countOneBits(~abs(vec2<i32>(u_input.c, u_input.c))), select(vec2<bool>(all(vec3<bool>(false, true, true)), 108f > global2[_wgslsmith_index_u32(u_input.b.x, 12u)]), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), true), true)));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(~select(u_input.a.xy, u_input.a.xy, vec2<bool>(true, false)), u_input.a.yy) << (abs(u_input.b.x) % 32u), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(46339u, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))), func_2(func_1(vec4<i32>(0i, u_input.c, global1.a, 48395i), Struct_1(35572i, vec4<f32>(global1.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(16383u, 12u)], global1.b.x))), ~u_input.b.xw))), _wgslsmith_f_op_f32(f32(-1f) * -173f), global2[_wgslsmith_index_u32(u_input.b.x, 12u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -579f))), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(max(1u, u_input.b.x), 12u)], global1.b.x))))));
    global1 = Struct_1(-var_1.a >> (15618u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1367f, 1000f, _wgslsmith_f_op_f32(floor(352f)), 1f) - vec4<f32>(-1855f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), global2[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(var_1.b.x, -2097f)), 643f)));
    let var_2 = vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, u_input.c == 1i, true, select(false, false, false)), vec4<bool>(all(vec3<bool>(false, false, true)), global1.a != global1.a, true, any(vec2<bool>(false, false))))), any(select(vec2<bool>(1u >= u_input.b.x, false), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), any(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false))), !all(vec4<bool>(false, false, false, var_0.x < -1i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -1616f, var_1.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(957f, 1069f, 1518f, var_3.x) + vec4<f32>(-1898f, 796f, global2[_wgslsmith_index_u32(1u, 12u)], 890f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1415f, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], -1200f))) - _wgslsmith_f_op_vec4_f32(select(var_1.b, vec4<f32>(524f, var_1.b.x, 567f, global2[_wgslsmith_index_u32(8127u, 12u)]), vec4<bool>(true, true, var_2.x, true)))) - vec4<f32>(global1.b.x, var_1.b.x, var_3.x, _wgslsmith_f_op_f32(var_1.b.x - 2208f))), global2[_wgslsmith_index_u32(max(func_1(-vec4<i32>(-1i, var_1.a, global1.a, -1i), var_1), 4294967295u), 12u)], vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec3_u32(u_input.b.wyy, _wgslsmith_mod_vec3_u32(u_input.b.wzy, u_input.b.yyx))), _wgslsmith_add_u32(min(reverseBits(0u), 33804u), 2317u), ~func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, 0i, 71671i, -36642i), vec4<i32>(2200i, -2147483647i, 0i, global1.a)), Struct_1(19896i, vec4<f32>(var_1.b.x, -1172f, var_3.x, var_3.x))), abs(countOneBits(87297u))));
}

