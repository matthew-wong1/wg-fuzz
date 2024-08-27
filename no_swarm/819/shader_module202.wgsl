struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec2<u32>;

var<private> global2: u32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_mod_i32(22680i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(~reverseBits(-70517i), 0i), i32(-1i) * -1i));
    let var_1 = countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(1i, -2147483647i, 0i, -2147483647i)), ~(vec4<i32>(-1i, var_0, -1484i, var_0) | vec4<i32>(var_0, 28952i, var_0, var_0))), _wgslsmith_clamp_i32(-var_0, firstLeadingBit(0i), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0, var_0, var_0, var_0)), ~vec4<i32>(var_0, var_0, var_0, -2147483647i))), 1i << (max(70102u, abs(global1.x)) % 32u), -43073i));
    var var_2 = _wgslsmith_div_vec2_f32(arg_0.a.zz, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(719f, var_2.x)));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.zy))), _wgslsmith_f_op_vec2_f32(select(arg_0.a.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, -201f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1567f, var_2.x), vec2<f32>(arg_0.a.x, var_2.x))), global0[_wgslsmith_index_u32(~2156u | ~arg_1, 15u)]))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) + _wgslsmith_f_op_f32(max(160f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_2.x))))))) * var_2.x);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    global2 = 1u;
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-577f, 304f)))) + vec2<f32>(526f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(1079f, 117f, 966f)), u_input.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-185f - -1237f) - _wgslsmith_f_op_f32(-178f + -439f)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * var_0.x), vec2<f32>(var_0.x, -1130f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1589f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1000f, var_0.x, -1000f), !vec4<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(0u, 15u)], true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1892f, var_0.x)))) * vec4<f32>(var_0.x, 1073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_1.c.yyw)));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.a.x)));
    let var_1 = func_2(_wgslsmith_mod_i32(-4228i, i32(-1i) * -select(8931i, 2147483647i, global0[_wgslsmith_index_u32(0u, 15u)])), vec3<bool>(!(!(global0[_wgslsmith_index_u32(global1.x, 15u)] & false)), all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(global1.x, 15u)]), vec3<bool>(false, false, false))), true));
    let var_2 = select(!(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(global1.x, 15u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(62065u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(66013u, 15u)], false, false, global0[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(47376u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(10358u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), global0[_wgslsmith_index_u32(85128u, 15u)])), select(select(select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(18546u, 15u)], true), !vec4<bool>(true, global0[_wgslsmith_index_u32(117516u, 15u)], true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true, global0[_wgslsmith_index_u32(4294967295u, 15u)], false)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 15u)], true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(58861u, 15u)], global0[_wgslsmith_index_u32(global1.x, 15u)], global0[_wgslsmith_index_u32(19644u, 15u)])), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(~1u, 15u)], true), false), true);
    let var_3 = 27532u;
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, 38697i), _wgslsmith_mult_i32(52873i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-36434i, -68237i), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-52578i, -29792i), vec2<i32>(-23836i, -40340i))))), -1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(27365i, i32(-1i) * -49895i), (i32(-1i) * -1i) << (1u % 32u)), max(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 51121i), vec3<i32>(-64013i, -23073i, -31778i))), ~2147483647i)));
    return arg_0.a.x;
}

fn func_1() -> i32 {
    var var_0 = !(!vec3<bool>(any(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), true, !(!global0[_wgslsmith_index_u32(4294967295u, 15u)])));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(605f))))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-994f, _wgslsmith_f_op_f32(f32(-1f) * -734f))))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(-(~35901i), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false)))));
    var var_4 = -max(abs(vec4<i32>(max(2147483647i, -2147483647i), 1i, 0i, 1i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(64303i, 18619i, 0i, 23055i), vec4<i32>(-2727i, -1i, -60486i, 20544i), vec4<i32>(-1i, -24404i, 18269i, 0i)) | max(select(vec4<i32>(0i, 17825i, -1i, 16621i), vec4<i32>(1i, -43931i, -1i, 1i), false), vec4<i32>(-45434i, -14128i, -1i, -40743i)));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-abs(-2395i), 2147483647i, func_1()), ~(~_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(1i, 1i, 1i))));
    global1 = max(abs(~vec2<u32>(~48543u, ~28006u)), min(~vec2<u32>(_wgslsmith_div_u32(11935u, 39164u), max(u_input.a.x, global1.x)), u_input.a.yz));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2(-46141i, vec3<bool>(true, true, true)), 4294967295u)) + 445f), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-2217f, -1036f, -569f)), 6066u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1062f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-721f, 771f) + vec2<f32>(175f, 1981f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1465f, -442f), vec2<f32>(688f, -558f)))))));
    var var_2 = var_0.zx;
    let var_3 = select(select(select(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 15u)]), select(!vec3<bool>(global0[_wgslsmith_index_u32(42173u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], false), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 15u)]), false)), false), !vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(42970u, u_input.a.x), 15u)], false, all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]))), false), vec3<bool>(any(vec4<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false)), var_0.x == var_0.x, true, true)), false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], !(var_0.x != (var_0.x | 252i)), !any(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -932f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(step(-1379f, -1327f)), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-1048f * 134f), !(var_3.x || var_3.x)))), ~(~select(8364u, u_input.a.x, var_3.x)) >> ((max(_wgslsmith_clamp_u32(u_input.a.x, global1.x, global1.x), countOneBits(19593u)) >> (0u % 32u)) % 32u));
}

