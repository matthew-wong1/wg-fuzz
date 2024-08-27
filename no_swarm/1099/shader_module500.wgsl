struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: array<u32, 18>;

var<private> global2: vec4<i32> = vec4<i32>(64685i, -11218i, -1i, 45104i);

var<private> global3: Struct_1 = Struct_1(true, vec3<f32>(-1036f, 419f, 1643f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<u32, 7>();
    global1 = array<u32, 18>();
    global0 = array<u32, 7>();
    global3 = Struct_1(true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(394f)))), arg_1.b.x, _wgslsmith_f_op_f32(floor(arg_1.b.x))), global3.b, arg_1.a)));
    var var_0 = global2.x;
    return arg_2.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> vec2<u32> {
    global1 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f - 794f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(16490u, 18u)]), Struct_1(false, vec3<f32>(1092f, 281f, 121f)), Struct_1(global3.a, global3.b))), -1296f)))) + vec3<f32>(_wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 808f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, global3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(594f + 681f) - -1000f), true)), arg_1.x));
    var var_1 = ~_wgslsmith_dot_vec2_u32(countOneBits(min(~vec2<u32>(global0[_wgslsmith_index_u32(532u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]), ~vec2<u32>(u_input.a.x, 1u))), ~(~vec2<u32>(37397u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34840u, 7u)], 7u)])));
    let var_2 = !select(!vec2<bool>(global3.a, true), !(!(!vec2<bool>(true, global3.a))), vec2<bool>(global3.a, reverseBits(u_input.a.x) > 1u));
    let var_3 = select(!(!(!(!vec3<bool>(var_2.x, false, global3.a)))), vec3<bool>(var_2.x, select(select(false, var_2.x, global3.a & var_2.x), global3.a, !(!global3.a)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 18u)], 11043u, global0[_wgslsmith_index_u32(66773u, 7u)]), vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 0u, 4294967295u)), ~47653u) != ~(~43398u)), 1i < (abs(countOneBits(-25327i)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 33303u, arg_0), vec4<u32>(arg_0, 20567u, 0u, arg_0)) % 32u)));
    return vec2<u32>(~_wgslsmith_mod_u32(firstTrailingBit(4294967295u) & 4294967295u, _wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), ~global0[_wgslsmith_index_u32(0u, 7u)])), arg_0);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.x))))), 1142f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-857f)) - _wgslsmith_f_op_f32(trunc(-2039f)))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -1267f, 406f, var_0.b.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.b.x, global3.b.x, arg_2, arg_3.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_2, arg_3.b.x, 988f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, arg_3.b.x, arg_3.b.x, global3.b.x)))));
    global1 = array<u32, 18>();
    let var_2 = arg_3;
    var var_3 = u_input.a.zz;
    return var_2;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = func_4(global2.xxz, ~(~(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 22005u) ^ func_2(15800u, global3.b.xy))), global3.b.x, Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, global3.b.x, global3.b.x)) * vec3<f32>(global3.b.x, -181f, global3.b.x)))));
    global0 = array<u32, 7>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x));
    let var_2 = all(select(!select(!vec4<bool>(false, global3.a, false, global3.a), !vec4<bool>(var_0.a, global3.a, global3.a, true), select(vec4<bool>(global3.a, true, true, var_0.a), vec4<bool>(true, global3.a, false, false), var_0.a)), !vec4<bool>(all(vec2<bool>(true, global3.a)), true, true, true), !(_wgslsmith_f_op_f32(sign(global3.b.x)) > _wgslsmith_f_op_f32(-846f * var_0.b.x))));
    return select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(105540u, 7u)], ~(~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)]))), 18u)], 18u)], abs(reverseBits(~743u)), select(!all(!vec2<bool>(var_2, var_2)), true, !var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(func_1(-1i), min(global1[_wgslsmith_index_u32(57156u, 18u)] << (11196u % 32u), ~_wgslsmith_mod_u32(func_1(global2.x), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(43450u, 7u)], global0[_wgslsmith_index_u32(50492u, 7u)]))), ~(~12319u), _wgslsmith_add_u32(~1u, global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(1u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32086u, 18u)], 7u)], 7u)])), u_input.a.x, global3.b.x < global3.b.x), 7u)]));
    var_0 = min(max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, func_1(global2.x), 54011u), ~(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9679u, 18u)], 18u)], u_input.a.x, 4294967295u) & vec4<u32>(74649u, var_0.x, u_input.a.x, var_0.x))), (_wgslsmith_div_vec4_u32(vec4<u32>(30052u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), vec4<u32>(4294967295u, 45871u, global1[_wgslsmith_index_u32(var_0.x, 18u)], 41132u)) & vec4<u32>(3669u, var_0.x, var_0.x, u_input.a.x)) << (~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(abs(min(vec4<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 0u, 19409u) ^ vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67979u, 18u)], 18u)], 1u, 32318u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 18u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56670u, 7u)], 7u)]), vec4<u32>(0u, 31296u, 59584u, 70783u)))), firstLeadingBit(vec4<u32>(u_input.a.x, 17324u, 0u, _wgslsmith_clamp_u32(35316u, 6739u, 22484u)))));
    var_0 = _wgslsmith_mult_vec4_u32(~abs(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 1u, 5201u, var_0.x), vec4<u32>(27484u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 18u)], 18u)], global1[_wgslsmith_index_u32(11609u, 18u)], u_input.a.x)))), ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_add_u32(82127u, 71882u), abs(84482u), ~global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 7u)])));
    global2 = vec4<i32>(global2.x ^ _wgslsmith_sub_i32(~firstLeadingBit(global2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(22944i, global2.x, global2.x, -2147483647i), countOneBits(vec4<i32>(global2.x, global2.x, 43601i, global2.x)))), countOneBits(global2.x), global2.x, -1i);
    var_0 = firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 1u, var_0.x, 0u), ~vec4<u32>(37836u, 1u, u_input.a.x, var_0.x), select(vec4<bool>(global3.a, global3.a, false, false), vec4<bool>(global3.a, true, false, false), global3.a)), ~vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 18u)], u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 1u))));
    let var_1 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(245f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.x, global3.b.x)), _wgslsmith_f_op_f32(trunc(-491f)))), _wgslsmith_f_op_f32(func_3(u_input.a.zy, Struct_1(global3.a, global3.b), func_4(global2.zxw, u_input.a.yx, 1195f, Struct_1(false, global3.b)))))));
}

