struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(17680u, 1u, 6862u, 46538u, 1u, 38744u, 49871u, 33467u, 0u, 1u, 7267u);

var<private> global1: array<i32, 13> = array<i32, 13>(-40227i, -1597i, 2147483647i, -18650i, -40177i, 0i, -50604i, 1i, -1i, 2147483647i, -36223i, 0i, i32(-2147483648));

var<private> global2: vec2<u32> = vec2<u32>(33042u, 4294967295u);

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1719f, arg_1.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(arg_1.a - arg_1.a)) * arg_3)), vec2<f32>(-2790f, global3.x));
    var var_1 = reverseBits(select(~abs(select(44492i, global1[_wgslsmith_index_u32(global2.x, 13u)], arg_2.x)), _wgslsmith_clamp_i32(abs(reverseBits(-1i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_0.zz, arg_0.zz), global1[_wgslsmith_index_u32(9438u, 13u)] | -61835i, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(arg_0.x >> (4294967295u % 32u), arg_0.x)), !(!any(vec4<bool>(true, true, arg_2.x, arg_2.x)))));
    global0 = array<u32, 11>();
    let var_2 = 41991i;
    global3 = vec2<f32>(_wgslsmith_div_f32(1493f, var_0.b.x), 1443f);
    return _wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11066u, 11u)], 11u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 11u)], 11u)]), firstLeadingBit(vec4<u32>(18754u, u_input.a.x, 22402u, 85378u))) << (vec4<u32>(_wgslsmith_mod_u32(global2.x, global0[_wgslsmith_index_u32(global2.x, 11u)]), 1u, 1u >> (global2.x % 32u), 4294967295u) % vec4<u32>(32u))), ~(abs(countOneBits(vec4<u32>(0u, 15442u, global2.x, u_input.a.x))) ^ _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, u_input.a.x, 59003u, u_input.a.x)), select(vec4<u32>(global0[_wgslsmith_index_u32(36443u, 11u)], 89080u, 28769u, u_input.a.x), vec4<u32>(global2.x, global2.x, 4294967295u, u_input.a.x), false))));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = ~((~(~vec4<u32>(43878u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 27355u, 1u)) << (vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(10907u, arg_1, global0[_wgslsmith_index_u32(62598u, 11u)], 1u), vec4<u32>(u_input.a.x, global2.x, 4294967295u, global0[_wgslsmith_index_u32(global2.x, 11u)])), ~global2.x, ~u_input.a.x) % vec4<u32>(32u))) & vec4<u32>(global2.x, func_3(countOneBits(var_0), Struct_1(322f, vec2<f32>(global3.x, 1835f)), vec3<bool>(arg_2, arg_2, true), -706f), ~_wgslsmith_mod_u32(global2.x, 4294967295u), 4294967295u));
    let var_2 = true;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2282f - -650f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(276f))))));
    let var_4 = _wgslsmith_sub_vec3_u32(u_input.a ^ ~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 32623u, arg_1)), countOneBits(vec3<u32>(var_1.x, 18032u, 4294967295u))), ~var_1.xwz);
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_3.x)))), vec2<f32>(global3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x))))));
}

fn func_1() -> Struct_1 {
    let var_0 = !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), false));
    var var_1 = global1[_wgslsmith_index_u32(~(~(~(~(global2.x >> (u_input.a.x % 32u))))), 13u)];
    let var_2 = func_2(vec4<i32>(-(~global1[_wgslsmith_index_u32(57877u, 13u)] & ~(-18287i)), 2147483647i, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(select(u_input.a.x, 11499u, false), 4294967295u)), 13u)]), _wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(max(global0[_wgslsmith_index_u32(1u, 11u)], global2.x)), 1u), 21016u), all(vec3<bool>(true, !(global1[_wgslsmith_index_u32(4294967295u, 13u)] == -2147483647i), var_0)));
    let var_3 = reverseBits(global2.x & _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 11u)] | (4294967295u << (0u % 32u)), 40394u));
    global2 = _wgslsmith_mod_vec2_u32(u_input.a.yz, u_input.a.yx) >> (~vec2<u32>(func_3(select(vec4<i32>(global1[_wgslsmith_index_u32(1u, 13u)], 0i, 63963i, global1[_wgslsmith_index_u32(105943u, 13u)]), vec4<i32>(17217i, -46816i, -2491i, 12904i), true), func_2(vec4<i32>(global1[_wgslsmith_index_u32(global2.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), 5105u, var_0), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), var_0), 1000f), _wgslsmith_dot_vec4_u32(vec4<u32>(74988u, 26736u, 12475u, global2.x), ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u, 5352u, 72419u))) % vec2<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(min(global3.x, var_2.a))) - global3.x) + var_2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-731f, var_2.a), _wgslsmith_f_op_vec2_f32(var_2.b * vec2<f32>(global3.x, var_2.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    global0 = array<u32, 11>();
    global3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))));
    global3 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1136f))));
    global3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1054f, 926f), vec2<f32>(535f, global3.x)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.x, global3.x))), !any(vec4<bool>(false, true, false, false)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, 682f), -567f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + -2118f) - _wgslsmith_f_op_f32(exp2(global3.x)))))));
    var var_0 = func_1();
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, _wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global2.x, 13u)], -24925i), vec2<i32>(global1[_wgslsmith_index_u32(global2.x, 13u)], -6650i)), -vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 13u)], 12156i))), ~(~(~vec2<i32>(2147483647i, -5802i)))), vec4<u32>(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], ~4294967295u), ~select(global2.x, 32566u, false) ^ _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global2.x, 11u)], global0[_wgslsmith_index_u32(14255u, 11u)], 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 11u)], 11u)], 22762u, 1u), vec4<u32>(4294967295u, global2.x, 0u, global0[_wgslsmith_index_u32(7180u, 11u)])), min(u_input.a.x, global2.x)), global2.x, ~u_input.a.x));
}

