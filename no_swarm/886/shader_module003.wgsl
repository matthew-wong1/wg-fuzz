struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-1000f, -252f, -1000f, 1558f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    var var_0 = vec4<u32>(u_input.c, _wgslsmith_sub_u32(countOneBits(~(~0u)), max(u_input.e, 4294967295u)), 0u, arg_2.x);
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, firstLeadingBit(1u), 1u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(38187u, var_0.x, var_0.x)), vec3<u32>(4294967295u, 4294967295u, 25108u))), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 40886u, u_input.c, 1u), vec4<u32>(arg_2.x, u_input.c, var_0.x, 1u)), ~vec4<u32>(arg_2.x, 4294967295u, 0u, 1u), vec4<bool>(true, true, true, false)), ~(~vec4<u32>(6075u, 62914u, 4294967295u, u_input.c)), vec4<u32>(max(u_input.e, u_input.e), ~4294967295u, arg_2.x & arg_2.x, abs(4294967295u))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> bool {
    global0 = array<f32, 4>();
    var var_0 = vec4<u32>(u_input.d.x, _wgslsmith_add_u32(min(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12630u), u_input.d.zy), ~82789u), arg_0), 1u), u_input.c, 57090u);
    var_0 = ~(~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 65010u), var_0.yw), firstTrailingBit(arg_0)), reverseBits(u_input.e), ~(u_input.c ^ u_input.e), func_3(u_input.a.xxw, -u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(5396u, arg_0, 1719u), u_input.d.yxz))));
    let var_1 = Struct_2(Struct_1(countOneBits(~5567u) ^ ~(~u_input.d.x), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.x, 4u)], -1138f)), _wgslsmith_f_op_f32(step(603f, 356f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4640u, 4u)], global0[_wgslsmith_index_u32(u_input.e, 4u)]) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.wy, vec2<u32>(1u, u_input.d.x)), 4u)]), _wgslsmith_f_op_f32(581f * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.x, 4u)])))), 3404i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e, 4u)], -1000f), global0[_wgslsmith_index_u32(11249u, 4u)], _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 4u)]))) - vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 4u)]), _wgslsmith_f_op_f32(1171f - global0[_wgslsmith_index_u32(18161u, 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, 29169u, var_0.x), 4u)]))), Struct_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(var_0.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]))))), ~(~(-45878i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1091f, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(15855u, 4u)]), vec3<f32>(1585f, -1437f, global0[_wgslsmith_index_u32(4294967295u, 4u)])))), 18287i, ~(~u_input.d));
    var_0 = ~var_1.d;
    return any(vec3<bool>(!(!any(vec2<bool>(true, false))), any(vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true)), false == ((1i == arg_1.x) == true)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = true;
    var_0 = func_2(63321u, vec4<i32>(u_input.a.x, i32(-1i) * -2147483647i, -2147483647i, 2147483647i));
    var_0 = !(global0[_wgslsmith_index_u32(arg_0.x, 4u)] > global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(2218u, 1u) ^ arg_0.x), 4u)]);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 4u)])), !any(vec4<bool>(true, true, true, true)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(u_input.e & arg_0.x) >> (u_input.e % 32u), ~arg_0.x), 4u)], all(vec4<bool>(true && any(vec4<bool>(false, false, true, false)), true, !all(vec2<bool>(false, true)), false))));
    let var_2 = u_input.c;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(true, func_1(u_input.d.yxw) >= func_3(u_input.a.yyw, -6951i, vec3<u32>(4294967295u, u_input.d.x, 1800u))), vec2<bool>(true, !(all(vec3<bool>(false, true, true)) | true)), vec2<bool>(true, true));
    let var_1 = var_0.x;
    global0 = array<f32, 4>();
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(653f, 955f) - global0[_wgslsmith_index_u32(~u_input.e, 4u)])))) - vec2<f32>(1022f, -482f));
    var var_3 = Struct_1(u_input.e, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -919f, -1356f) - vec3<f32>(var_2.x, var_2.x, -179f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1323f, var_2.x))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(561f, 344f, 1698f)))))), reverseBits(1i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(768f, global0[_wgslsmith_index_u32(u_input.d.x, 4u)], -618f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1000f, global0[_wgslsmith_index_u32(u_input.c, 4u)]))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1064f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 4u)]) + -399f), _wgslsmith_f_op_f32(var_2.x - global0[_wgslsmith_index_u32(1u, 4u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, select(vec3<i32>(-6231i, min(abs(-50484i), 1i), -27452i), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, 1i), ~u_input.a.x, 1i), var_0.x), ~_wgslsmith_div_u32(var_3.a, abs(~36635u)), _wgslsmith_f_op_f32(ceil(-1436f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1147f))));
}

