struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(130f, -1231f, 166f, 2927f, 342f, 1234f, -1058f, 1574f, 1086f, -299f, 1000f);

var<private> global1: vec3<u32> = vec3<u32>(1576u, 43007u, 1u);

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1106f, -1581f), vec2<f32>(-503f, -227f), vec2<f32>(614f, -667f), vec2<f32>(469f, -169f), vec2<f32>(1844f, 2640f), vec2<f32>(-672f, 1000f), vec2<f32>(2130f, 795f), vec2<f32>(1345f, -1333f), vec2<f32>(-2115f, -1000f), vec2<f32>(399f, -272f), vec2<f32>(-450f, -1014f), vec2<f32>(562f, 490f), vec2<f32>(-237f, -477f));

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(571f, _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-34358i), _wgslsmith_mult_i32(1i, arg_0.b), arg_0.b), vec3<i32>(_wgslsmith_div_i32(-24382i ^ u_input.a, arg_0.b), u_input.a, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1221f, -936f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 11u)], arg_0.a))))), arg_0.b < 22046i);
    global4 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(global1.x, global1.x ^ global1.x), ~(~(~global1.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~13225u), 0u | _wgslsmith_add_u32(global1.x, global1.x)), vec2<u32>(min(_wgslsmith_sub_u32(24781u, global1.x), global1.x), ~(~global1.x))));
    var var_1 = ~(~firstTrailingBit(vec4<u32>(~global1.x, _wgslsmith_mult_u32(0u, global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, 84277u), vec3<u32>(global1.x, global1.x, 44527u)), 0u)));
    let var_2 = var_0;
    global0 = array<f32, 11>();
    return select(vec2<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(var_2.d, false), vec2<bool>(var_0.d, true))), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(var_2.d, var_2.d, true, true), vec4<bool>(var_2.d, var_0.d, true, false)))), vec2<bool>(all(vec2<bool>(var_2.b <= -12282i, var_1.x >= global1.x)), false), vec2<bool>(true, u_input.a < -22659i));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global4 = 0u << (global1.x % 32u);
    var var_0 = global0[_wgslsmith_index_u32(51384u, 11u)];
    global3 = array<vec2<f32>, 13>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(348f, -214f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1042f - 228f)))), u_input.a <= abs(u_input.a))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global1.yx & vec2<u32>(39819u, arg_0.x), vec2<u32>(arg_0.x, firstTrailingBit(global1.x))), 11u)]);
    global2 = 1u;
    return Struct_1(_wgslsmith_f_op_f32(step(796f, var_1)), _wgslsmith_mod_i32(-(~max(u_input.a, -3437i)), 11192i >> (1u % 32u)), _wgslsmith_f_op_f32(-var_1), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), !func_3(Struct_1(-484f, 0i, -1046f, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    global3 = array<vec2<f32>, 13>();
    var var_0 = -(~arg_3.b);
    global4 = ~78741u;
    global4 = 57194u;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-671f, func_2(~max(vec4<u32>(2104u, global1.x, 57131u, global1.x), vec4<u32>(global1.x, 10190u, global1.x, 9912u))).c))));
    return ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, 1u) >> ((vec4<u32>(global1.x, 29724u, 0u, global1.x) & vec4<u32>(global1.x, global1.x, 1u, global1.x)) % vec4<u32>(32u)), vec4<u32>(abs(global1.x), ~global1.x, 41126u, firstTrailingBit(1u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec3<bool> {
    global2 = countOneBits(_wgslsmith_dot_vec4_u32(~func_4(func_2(vec4<u32>(global1.x, 4294967295u, global1.x, global1.x)), u_input.a > u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20688u), global1.xz), 11u)], func_2(vec4<u32>(global1.x, global1.x, global1.x, 42422u))), ~abs(~vec4<u32>(0u, 1u, global1.x, global1.x))));
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2252f))), global0[_wgslsmith_index_u32(global1.x, 11u)], arg_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-341f)) * arg_0.x), _wgslsmith_div_f32(226f, -1000f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(56940u >> ((global1.x << (1u % 32u)) % 32u), max(19277u, global1.x)), 11u)]));
    var var_2 = ~firstTrailingBit(vec3<u32>(1u, 1u, global1.x) >> (~vec3<u32>(11794u, global1.x, global1.x) % vec3<u32>(32u))) | abs(vec3<u32>(func_4(func_2(vec4<u32>(global1.x, global1.x, global1.x, global1.x)), all(vec3<bool>(true, false, arg_1)), _wgslsmith_f_op_f32(round(-813f)), Struct_1(-276f, u_input.a, var_1.x, true)).x, ~(~4294967295u), global1.x));
    let var_3 = Struct_1(447f, countOneBits(max(abs(-2147483647i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-13124i, u_input.a))))), _wgslsmith_f_op_f32(sign(-269f)), arg_1);
    return select(!vec3<bool>(var_3.d, global0[_wgslsmith_index_u32(var_2.x, 11u)] >= -135f, true), !(!(!select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, var_3.d, true), vec3<bool>(false, arg_1, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f - var_3.c)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, var_3.a)))) < _wgslsmith_div_f32(1081f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-846f)), _wgslsmith_f_op_f32(-arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 13>();
    var var_0 = -479f;
    let var_1 = vec4<bool>(!(false || (_wgslsmith_f_op_f32(sign(2158f)) < _wgslsmith_f_op_f32(984f - 1782f))), !(false | !all(vec3<bool>(false, false, true))), all(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global3[_wgslsmith_index_u32(81215u, 13u)]))), true)), (countOneBits(~7950u) != ~abs(global1.x)) & (any(vec2<bool>(true, true)) && (global1.x < (global1.x >> (54093u % 32u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, global0[_wgslsmith_index_u32(75275u, 11u)], 150f)) - _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(14830u, 11u)], 357f, global0[_wgslsmith_index_u32(24870u, 11u)]), vec3<f32>(-241f, global0[_wgslsmith_index_u32(18631u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 11u)], global0[_wgslsmith_index_u32(14492u, 11u)], global0[_wgslsmith_index_u32(global1.x, 11u)]))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(global1.x, 11u)], 223f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0[_wgslsmith_index_u32(global1.x, 11u)], 1140f) * vec3<f32>(-187f, global0[_wgslsmith_index_u32(4294967295u, 11u)], 473f)))))))));
    let var_3 = func_2(~select(select(vec4<u32>(global1.x, global1.x, 43255u, 54190u), vec4<u32>(global1.x, global1.x, 42444u, global1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), ~vec4<u32>(global1.x, global1.x, 30718u, global1.x), true) >> (countOneBits(~vec4<u32>(global1.x, global1.x, global1.x, 35511u)) % vec4<u32>(32u)));
    let var_4 = 1629u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_4, _wgslsmith_clamp_vec3_u32(max(~vec3<u32>(32829u, 137342u, global1.x), countOneBits(vec3<u32>(var_4, 1u, var_4))), ~_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, var_4, 13130u) | vec3<u32>(960u, var_4, var_4), vec3<u32>(1u, 1u, 1u)), vec3<u32>(abs(func_4(var_3, var_1.x, 224f, var_3).x), ~(var_4 >> (4294967295u % 32u)), 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -828f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 11u)], 160f, var_2.x, var_3.c) + vec4<f32>(453f, 467f, 979f, 559f)))))));
}

