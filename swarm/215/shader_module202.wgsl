struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: vec2<f32>;

var<private> global1: bool;

var<private> global2: array<bool, 8> = array<bool, 8>(true, true, true, false, true, true, true, false);

var<private> global3: array<f32, 6> = array<f32, 6>(543f, 1595f, -1146f, 464f, 775f, 1470f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(select(select(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 8u)], false, true)), select(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(11483u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(80126u, 8u)], global2[_wgslsmith_index_u32(23142u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(20081u, 8u)], true, true, global2[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], true, true, false)), u_input.a.x != u_input.a.x), global2[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(112488u, 8u)], global2[_wgslsmith_index_u32(63677u, 8u)], true), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(_wgslsmith_add_u32(20272u, 74364u), 1u)), 8u)]), select(global2[_wgslsmith_index_u32(select(firstLeadingBit(max(4294967295u, 13939u)), firstLeadingBit(reverseBits(4294967295u)), global2[_wgslsmith_index_u32(reverseBits(~88812u), 8u)]), 8u)], true, !any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], false))), vec4<f32>(-101f, global3[_wgslsmith_index_u32(firstLeadingBit(82173u), 6u)], _wgslsmith_f_op_f32(1316f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(22362u, 6u)], 677f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.x))))), vec3<f32>(global3[_wgslsmith_index_u32(abs(~0u), 6u)], _wgslsmith_div_f32(291f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, global0.x)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(33367u, 6u)] - global0.x)))), global0.x));
    global2 = array<bool, 8>();
    let var_1 = 1u;
    var var_2 = Struct_1(var_0.a, any(vec2<bool>(all(var_0.a), any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(92670u, 8u)])))), _wgslsmith_f_op_vec4_f32(-var_0.c), var_0.d);
    var var_3 = Struct_1(!(!var_0.a), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_0.c, var_2.c))) + var_0.c)), var_2.d);
    return 55777u;
}

fn func_2() -> vec4<u32> {
    var var_0 = select(!select(vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(67720u, 8u)], true)), false), !vec2<bool>(true, global2[_wgslsmith_index_u32(60013u, 8u)]), any(vec2<bool>(false, global2[_wgslsmith_index_u32(7217u, 8u)]))), vec2<bool>(global2[_wgslsmith_index_u32(abs(func_3()), 8u)] && global2[_wgslsmith_index_u32(~(~32865u), 8u)], (select(-38289i, 2147483647i, true) & (i32(-1i) * -16730i)) > (abs(u_input.a.x) | reverseBits(u_input.a.x))), vec2<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(~(~12904u)), 8u)], !all(vec3<bool>(false, global2[_wgslsmith_index_u32(13327u, 8u)], false))));
    let var_1 = 7704u;
    var var_2 = Struct_1(select(select(select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, true, var_0.x, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 8u)], true, true, var_0.x)), select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, var_0.x, false, global2[_wgslsmith_index_u32(var_1, 8u)])), global2[_wgslsmith_index_u32(abs(var_1), 8u)]), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(var_1, 8u)], true, global2[_wgslsmith_index_u32(var_1, 8u)]), !vec4<bool>(var_0.x, true, false, global2[_wgslsmith_index_u32(21831u, 8u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(62972u, 8u)], true, true, false), vec4<bool>(var_0.x, false, global2[_wgslsmith_index_u32(var_1, 8u)], var_0.x), vec4<bool>(var_0.x, true, true, var_0.x))), select(vec4<bool>(global2[_wgslsmith_index_u32(var_1, 8u)], var_0.x, true, true), vec4<bool>(false, var_0.x, true, true), true)), select(select(!vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(0u, 8u)], var_0.x, true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_1, 8u)], var_0.x, global2[_wgslsmith_index_u32(var_1, 8u)]), vec4<bool>(var_0.x, true, global2[_wgslsmith_index_u32(var_1, 8u)], global2[_wgslsmith_index_u32(var_1, 8u)]), true), vec4<bool>(global2[_wgslsmith_index_u32(49953u, 8u)], var_0.x, false, false)), select(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(25462u, 8u)]), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(global2[_wgslsmith_index_u32(var_1, 8u)], true, var_0.x, var_0.x), false), vec4<bool>(false, true, false, var_0.x)), all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(30157u, 8u)], var_0.x))), var_0.x != var_0.x), !var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(1f)), 1171f, global3[_wgslsmith_index_u32(firstTrailingBit(var_1), 6u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3[_wgslsmith_index_u32(var_1 ^ 40279u, 6u)], _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(38315u, 6u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1150f, 271f, global3[_wgslsmith_index_u32(var_1, 6u)])))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, 762f, global3[_wgslsmith_index_u32(107354u, 6u)]), vec3<f32>(-2205f, -1977f, global3[_wgslsmith_index_u32(var_1, 6u)]))))))));
    var var_3 = Struct_1(!vec4<bool>(true, (false | global2[_wgslsmith_index_u32(30266u, 8u)]) == var_0.x, var_2.b, global2[_wgslsmith_index_u32(var_1, 8u)]), !(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_1) >> (select(0u, 0u, true) % 32u), 8u)] & false), vec4<f32>(177f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(var_1, 6u)], 546f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_2.d)))))));
    let var_4 = max(10548u, var_1);
    return min(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, var_1, 3114u, var_4), vec4<u32>(var_1, var_4, 1u, 0u), vec4<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 8u)], var_3.a.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1, var_1, var_4), vec4<u32>(51885u, var_1, 1u, 1u)), var_4 | var_4, 1u, 22658u)), _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 26757u, var_1, var_1), vec4<u32>(var_4, var_1, 4704u, var_1))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 63838u, 1u, var_4), vec4<u32>(5967u, var_1, 66114u, var_1)))) ^ ~reverseBits(vec4<u32>(4294967295u, var_4, var_4, ~3558u));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> vec2<f32> {
    global1 = !any(select(arg_0, vec3<bool>(false, global2[_wgslsmith_index_u32(firstLeadingBit(127071u), 8u)], !arg_0.x), false));
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, firstLeadingBit(1u), abs(64441u), 1u), max(vec4<u32>(4294967295u, 17840u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 24583u, 28878u)) ^ func_2()), 1u), 8u)];
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(10394u, 6u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), 6u)])) + global0.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 6u)])), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 8u)];
    var var_1 = !vec3<bool>(!(true || global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 35828u), vec2<u32>(4294967295u, 49175u)), 8u)]), true, global2[_wgslsmith_index_u32(~select(~4294967295u, ~27219u, !global2[_wgslsmith_index_u32(1u, 8u)]), 8u)]);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(true, var_1.x, var_1.x), 1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1397f))))))));
    var_1 = vec3<bool>(var_1.x, false, false);
    let var_2 = ((vec3<i32>(-1i) * -(~vec3<i32>(1i, 1i, 14507i))) << ((vec3<u32>(select(4294967295u, 18466u, global2[_wgslsmith_index_u32(687u, 8u)]), 66689u, ~18369u) | countOneBits(~vec3<u32>(1u, 4294967295u, 4294967295u))) % vec3<u32>(32u))) & ~min(min(-vec3<i32>(-19419i, 2147483647i, 7795i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<i32>(45924i, -1i, 5201i)), max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), abs(vec3<i32>(u_input.a.x, 25745i, u_input.a.x))));
    global1 = !(!var_1.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global3[_wgslsmith_index_u32(1u, 6u)]));
    let var_4 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~0u, ~(~4294967295u), 0u, ~30017u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

