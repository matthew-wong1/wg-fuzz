struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<u32, 20>;

var<private> global3: array<f32, 19> = array<f32, 19>(-884f, 577f, 1602f, -258f, -1081f, 737f, -1635f, -1563f, 421f, -1305f, -1000f, 1155f, 971f, 455f, 974f, -1089f, -1719f, 581f, 186f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = !global0.x;
    let var_1 = vec3<i32>(2147483647i, 1i, -1i);
    var var_2 = vec2<bool>(false, true & all(!(!vec4<bool>(true, global0.x, global0.x, var_0))));
    var var_3 = 1000f;
    let var_4 = global1[_wgslsmith_index_u32(max(4294967295u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)]), 22u)];
    return vec4<bool>(global0.x, true, global0.x, !(!(!select(global0.x, true, false))));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 19u)]), global3[_wgslsmith_index_u32(~countOneBits(2672u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]), 19u)], global3[_wgslsmith_index_u32(65491u, 19u)]) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55924u, 20u)], 19u)], 1672f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 19u)]) * vec3<f32>(-357f, -725f, 817f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_div_f32(-268f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 19u)]), global3[_wgslsmith_index_u32(~115612u, 19u)])) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1185f, global3[_wgslsmith_index_u32(19906u, 19u)], 1326f))))));
    return -vec3<i32>(u_input.a, arg_0.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(17312i, -1i, u_input.a), select(vec3<i32>(-66879i, arg_0.a, arg_0.a), vec3<i32>(u_input.a, arg_0.a, u_input.a), vec3<bool>(false, true, global0.x))) & -1i);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = !(!select(!select(vec4<bool>(false, false, false, false), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x), vec4<bool>(global0.x, global0.x, all(vec2<bool>(global0.x, global0.x)), global0.x), (arg_0.a ^ arg_1) != firstLeadingBit(-17770i)));
    let var_1 = func_2(abs(-select(vec3<i32>(1i, arg_1, u_input.a), vec3<i32>(arg_0.a, -1i, 69052i), false)) ^ firstLeadingBit(vec3<i32>(firstTrailingBit(1i), u_input.a, abs(51604i))));
    global0 = var_1.yy;
    global0 = func_2(func_3(Struct_1(u_input.a)) & vec3<i32>(arg_0.a, -arg_0.a, arg_0.a)).wx;
    return ~1779i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, global0.x, -1000f == _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(min(1u, _wgslsmith_mod_u32(10167u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42616u, 20u)], 20u)])), 19u)] + -538f));
    let var_1 = vec2<f32>(global3[_wgslsmith_index_u32(46806u, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(62824u, 19u)])));
    var var_2 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a) >> ((vec4<u32>(1u, 4294967295u, 22343u, 10297u) | vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40337u, 20u)], 20u)], 20u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)])) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, -2147483647i, func_1(global1[_wgslsmith_index_u32(0u, 22u)], 1i))), -37410i));
    global0 = vec2<bool>(any(select(var_0.yxw, var_0.yxw, vec3<bool>(false, var_0.x == var_0.x, false))), !(~66721u == ~(~global2[_wgslsmith_index_u32(99617u, 20u)])));
    let var_3 = vec4<i32>(u_input.a, -reverseBits(~var_2.a), _wgslsmith_sub_i32(u_input.a, _wgslsmith_sub_i32(-u_input.a, u_input.a)), -2147483647i);
    var_2 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52062u, 20u)], 20u)]), 20u)]), global2[_wgslsmith_index_u32(abs(firstTrailingBit(global2[_wgslsmith_index_u32(~0u, 20u)])), 20u)]), 1u), 20u)], 22u)];
    var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 55873u, 4294967295u), vec3<u32>(1u, 7751u, 4294967295u)), 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 20u)], 20u)], 20u)])) << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~23347u, 20u)], 20u)] % 32u), ~(~max(1u, 33458u))), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_i32(1i >> (abs(global2[_wgslsmith_index_u32(65953u, 20u)]) % 32u), 11545i, u_input.a)), _wgslsmith_mult_vec3_u32(~reverseBits(countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 37764u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37864u, 20u)], 20u)]))), ~(~(vec3<u32>(42693u, global2[_wgslsmith_index_u32(1u, 20u)], 1u) ^ vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64996u, 20u)], 20u)], 46408u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1016f, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 19u)], -249f)), _wgslsmith_f_op_f32(sign(795f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(27897u, 19u)] + -571f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(step(var_1.x, 1279f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(63615u, 19u)]), _wgslsmith_f_op_f32(-460f - global3[_wgslsmith_index_u32(1u, 19u)]))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -452f, -1104f, -780f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(89155u, 20u)], 19u)], var_1.x, 1467f, -519f) + vec4<f32>(global3[_wgslsmith_index_u32(83095u, 19u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62479u, 20u)], 20u)], 19u)], var_1.x, 984f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1802f, -752f, 1636f, -370f)))), !vec4<bool>(false, global0.x, true, var_0.x)))));
}

