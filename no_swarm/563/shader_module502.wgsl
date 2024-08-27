struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, -6886i, 33445i);

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, true, true, true, false, true, false, false, false, false, true, false, true, false, true, false, true, false, true, true);

var<private> global2: array<u32, 15> = array<u32, 15>(6270u, 4294967295u, 0u, 84130u, 141162u, 3308u, 1u, 57863u, 1u, 45117u, 4294967295u, 61667u, 4294967295u, 1u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> u32 {
    return ~4294967295u;
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(480f, _wgslsmith_f_op_f32(round(arg_1))) - vec2<f32>(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1, 100f)))))));
    global1 = array<bool, 21>();
    let var_1 = Struct_1(~2059u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, u_input.e, 57939u), max(vec4<u32>(4294967295u, u_input.d, 41898u, 10893u), vec4<u32>(38641u, 0u, 46072u, 37125u))) % 32u), _wgslsmith_f_op_f32(-arg_1));
    let var_2 = vec3<i32>(min(_wgslsmith_sub_i32(-(~4546i), ~1i), _wgslsmith_sub_i32(~1i, _wgslsmith_add_i32(global0.x, _wgslsmith_mod_i32(global0.x, global0.x)))), -2147483647i, ~global0.x);
    let var_3 = Struct_5(vec4<i32>(u_input.c ^ (u_input.b & var_2.x), ~firstLeadingBit(global0.x), global0.x, global0.x) | firstTrailingBit(-vec4<i32>(-55471i, -21591i, -8191i, u_input.c)));
    return any(!vec3<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(~global2[_wgslsmith_index_u32(1u, 15u)]), 15u)], 21u)], arg_0));
}

fn func_2() -> f32 {
    let var_0 = select(!vec4<bool>(true, global1[_wgslsmith_index_u32(~4294967295u, 21u)], func_3(global1[_wgslsmith_index_u32(98008u >> (u_input.a.x % 32u), 21u)], _wgslsmith_f_op_f32(select(-1786f, -366f, false))), _wgslsmith_f_op_f32(962f * -1061f) > _wgslsmith_f_op_f32(step(103f, 794f))), select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.d, global2[_wgslsmith_index_u32(u_input.e, 15u)])), 21u)], false), !vec4<bool>(true, global1[_wgslsmith_index_u32(15848u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)] && global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 21u)], global1[_wgslsmith_index_u32(u_input.e, 21u)] | global1[_wgslsmith_index_u32(119690u, 21u)]), !(global0.x != u_input.b)), (all(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 21u)])) & (~u_input.e >= _wgslsmith_add_u32(u_input.a.x, global2[_wgslsmith_index_u32(51302u, 15u)]))) || true);
    var var_1 = !vec3<bool>(global1[_wgslsmith_index_u32(~max(u_input.e, u_input.e) ^ ~firstLeadingBit(0u), 21u)], all(vec2<bool>(var_0.x, true)), true && var_0.x);
    var var_2 = -43950i;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1620f), 323f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(863f)))))));
    let var_4 = Struct_2(Struct_1(4294967295u, var_3.a), -1896f);
    return -1338f;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    global2 = array<u32, 15>();
    global0 = abs(abs(firstLeadingBit(vec3<i32>(global0.x, -1i, u_input.b) >> (vec3<u32>(arg_0.a.a, u_input.a.x, arg_0.a.a) % vec3<u32>(32u))) << (min(~vec3<u32>(arg_0.a.a, 36815u, arg_0.a.a), vec3<u32>(82085u, 3262u, u_input.d)) % vec3<u32>(32u))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(177f, -1000f, true)), 309f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -206f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(895f, 1222f), _wgslsmith_f_op_f32(max(-560f, arg_1)), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13725u, 15u)], 21u)]))))));
    return Struct_3(_wgslsmith_f_op_f32(arg_0.a.b + arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(Struct_1(func_1(vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(5128u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), global2[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-2534f, -323f, -1806f, -1233f) * vec4<f32>(1958f, 291f, 1230f, 943f)), -vec3<i32>(-1i, 7457i, -9287i)), -321f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), 1000f)))), -780f);
    let var_1 = Struct_5(~vec4<i32>(_wgslsmith_sub_i32(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-19131i, u_input.c, -3110i, 0i), vec4<i32>(u_input.b, 8199i, global0.x, -1i))), ~1i | ~global0.x, _wgslsmith_add_i32(~global0.x, ~18796i), ~max(-1i, u_input.c)));
    let var_2 = Struct_5(~select(var_1.a, -var_1.a, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]) & vec4<i32>(var_1.a.x, countOneBits(var_1.a.x & global0.x), _wgslsmith_clamp_i32(abs(-6025i), abs(global0.x), 1i), max(_wgslsmith_dot_vec2_i32(global0.zx, vec2<i32>(-25092i, var_1.a.x)), min(-1i, -24782i))));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) - vec2<f32>(var_0.a, 354f))))));
    var var_4 = select(select(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 21u)], true, false), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(2765u, 21u)]))), select(vec3<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77323u, 15u)], 15u)], 15u)], 15u)], 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(u_input.e, 21u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 21u)], false)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(global2[_wgslsmith_index_u32(1u, 15u)], u_input.a.x, global1[_wgslsmith_index_u32(16071u, 21u)]), 1u), 21u)]), !select(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 21u)]), select(vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 15u)], 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 21u)], false)), true), vec3<bool>(false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(87789u, 15u)], 21u)], !(!global1[_wgslsmith_index_u32(0u, 21u)]))), vec3<bool>(false, any(select(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(43399u, 21u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20638u, 15u)], 21u)], false))), global1[_wgslsmith_index_u32(1u, 21u)]), all(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], false, global1[_wgslsmith_index_u32(u_input.d, 21u)]), vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(44034u, 21u)], true, global1[_wgslsmith_index_u32(4447u, 21u)], global1[_wgslsmith_index_u32(29436u, 21u)])), !global1[_wgslsmith_index_u32(19514u, 21u)], func_3(false, var_3.x), false), select(vec4<bool>(false, false, false, true), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.e, 21u)]), !vec4<bool>(global1[_wgslsmith_index_u32(85340u, 21u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 21u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20008u, 15u)], 21u)], false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(100f + var_3.x), vec2<u32>(func_1(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, var_4.x), vec3<bool>(global1[_wgslsmith_index_u32(19771u, 21u)], true, var_4.x)), 4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, var_3.x, -281f, var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1943f, var_0.a, var_0.a))), var_2.a.xwz), 39768u), -vec3<i32>(~(-51345i), -38182i, -var_2.a.x ^ 0i), 43846i, var_1.a);
}

