struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(i32(-2147483648), 62740i), vec2<i32>(2147483647i, -15965i), vec2<i32>(-49860i, 0i), vec2<i32>(-6398i, -38985i), vec2<i32>(-1i, 2147483647i), vec2<i32>(13275i, 2147483647i), vec2<i32>(40912i, 33904i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 22607i), vec2<i32>(13193i, 1i), vec2<i32>(36938i, 0i), vec2<i32>(3350i, i32(-2147483648)));

var<private> global2: array<u32, 17> = array<u32, 17>(53200u, 0u, 89577u, 11223u, 1u, 1u, 4294967295u, 4294967295u, 0u, 34869u, 51863u, 89578u, 74231u, 0u, 5522u, 1856u, 31473u);

var<private> global3: Struct_1;

var<private> global4: array<u32, 15> = array<u32, 15>(18591u, 30436u, 0u, 3796u, 5685u, 0u, 5746u, 30283u, 1u, 50357u, 0u, 4294967295u, 0u, 4294967295u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = ~_wgslsmith_mult_u32(~1u, global4[_wgslsmith_index_u32(~(~(~arg_0.b)), 15u)]);
    var var_1 = !all(vec4<bool>(false, _wgslsmith_f_op_f32(floor(-1928f)) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(select(arg_2, arg_2, vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x))), all(arg_2.ywx)));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(7572u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(43384u, 17u)], global4[_wgslsmith_index_u32(arg_0.b, 15u)], global3.b, 1u), vec4<u32>(14697u, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37723u, 15u)], 17u)], 69832u, 0u)), 1u)), _wgslsmith_clamp_u32(0u, global3.b, ~global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(61051u, 1u), 15u)]), global2[_wgslsmith_index_u32(13870u, 17u)]);
    let var_3 = select(firstLeadingBit(1i), u_input.a, arg_2.x);
    var var_4 = max(vec4<u32>(0u, global3.b, firstLeadingBit(~countOneBits(0u)), 1u), ~(~(~select(vec4<u32>(global4[_wgslsmith_index_u32(arg_0.b, 15u)], global4[_wgslsmith_index_u32(arg_0.b, 15u)], 28530u, 0u), vec4<u32>(arg_0.b, 44375u, 4294967295u, arg_0.b), arg_2.x))));
    return vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(~1u, ~arg_0.b), 1u), 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<f32>) -> vec4<u32> {
    global2 = array<u32, 17>();
    global2 = array<u32, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_3 * _wgslsmith_f_op_vec3_f32(arg_3 * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f * arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1817f, -1078f)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), var_0.x), firstTrailingBit(global3.b));
    let var_2 = abs(arg_2);
    return _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(93623u, arg_0, global3.b, var_1.b)), abs(~vec4<u32>(15950u, global4[_wgslsmith_index_u32(20559u, 15u)], global3.b, arg_0))), vec4<u32>(arg_0, select(~1u, ~global2[_wgslsmith_index_u32(arg_0, 17u)], arg_1.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(global4[_wgslsmith_index_u32(20781u, 15u)], 1u), _wgslsmith_add_vec2_u32(vec2<u32>(global3.b, 0u), vec2<u32>(69219u, var_1.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(9284u, global2[_wgslsmith_index_u32(4607u, 17u)]), ~vec2<u32>(0u, global2[_wgslsmith_index_u32(arg_0, 17u)])))), ~vec4<u32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4250u, 15u)] & 43788u, 17u)], ~1u, 82238u, _wgslsmith_div_u32(1u, 139545u)) ^ ((~vec4<u32>(1u, arg_0, 4294967295u, var_1.b) >> (~vec4<u32>(60887u, 38595u, 6321u, var_1.b) % vec4<u32>(32u))) << ((~vec4<u32>(0u, 3705u, 6587u, global2[_wgslsmith_index_u32(0u, 17u)]) & vec4<u32>(global3.b, global2[_wgslsmith_index_u32(43454u, 17u)], var_1.b, var_1.b)) % vec4<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global3 = Struct_1(1f, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~arg_1.yxy, func_3(arg_1.x, vec3<bool>(true, true, false), u_input.a, vec3<f32>(arg_2.a, 664f, 1174f)).yxz), ~_wgslsmith_div_vec3_u32(arg_1.zxx, vec3<u32>(63634u, 41292u, arg_1.x))), 17u)]);
    global1 = array<vec2<i32>, 13>();
    global2 = array<u32, 17>();
    var var_0 = firstLeadingBit(vec2<u32>(~6169u, 1u));
    var var_1 = select(select(select(vec4<bool>(u_input.a < u_input.a, all(vec3<bool>(false, true, false)), true, true), vec4<bool>(any(vec2<bool>(false, true)), true, any(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, false))), ~4294967295u <= func_1(arg_2, vec4<f32>(1000f, 481f, arg_0, -1359f), vec4<bool>(false, false, false, false)).x), select(vec4<bool>(true, true, false, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true)), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, true), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, any(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, true, true, false)))));
    return ~1u;
}

fn func_2() -> f32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(ceil(1000f))))), select(global3.b, ~_wgslsmith_sub_u32(global3.b, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(38385u, 17u)])), all(vec2<bool>(any(vec2<bool>(true, false)), false))));
    var var_0 = false;
    var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(~(global4[_wgslsmith_index_u32(func_4(723f, func_3(global2[_wgslsmith_index_u32(43557u, 17u)], vec3<bool>(true, false, false), -2147483647i, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a, global3.a, global3.a)))), Struct_1(1502f, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(28814u, 17u)]), vec2<u32>(global4[_wgslsmith_index_u32(14012u, 15u)], 49942u)))), 15u)] >> ((global3.b << (12026u % 32u)) % 32u)), 5u)];
    var var_2 = false;
    return -1365f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 15>();
    global4 = array<u32, 15>();
    global4 = array<u32, 15>();
    var var_0 = global0[_wgslsmith_index_u32(681u, 5u)];
    global4 = array<u32, 15>();
    var var_1 = ~(~4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(var_0.b), 20045u ^ (4294967295u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 17u)], 17u)], 17u)])), select(countOneBits(vec2<u32>(0u, var_0.b)), func_1(global0[_wgslsmith_index_u32(global3.b, 5u)], vec4<f32>(857f, var_0.a, 574f, var_0.a), vec4<bool>(true, false, true, false)), vec2<bool>(true, false)) << ((abs(vec2<u32>(global2[_wgslsmith_index_u32(9287u, 17u)], global3.b)) ^ (vec2<u32>(global2[_wgslsmith_index_u32(1u, 17u)], 40113u) >> (vec2<u32>(global4[_wgslsmith_index_u32(1u, 15u)], var_0.b) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global3.b, 17u)], 4294967295u) & ~var_0.b), ~global2[_wgslsmith_index_u32(~1u & ~global3.b, 17u)]), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(0u) | ~(4294967295u >> (var_0.b % 32u)), func_1(Struct_1(375f, select(4294967295u, 18898u, false)), vec4<f32>(377f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-956f + var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -2106f)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))).x));
}

