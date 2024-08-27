struct Struct_1 {
    a: vec4<i32>,
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

var<private> global0: u32 = 1u;

var<private> global1: array<vec3<bool>, 18>;

var<private> global2: array<f32, 5> = array<f32, 5>(-1150f, -654f, 1592f, -1053f, 381f);

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    global2 = array<f32, 5>();
    var var_0 = vec2<bool>(!(all(vec4<bool>(true, false, true, false)) & true), any(!global1[_wgslsmith_index_u32(~39270u, 18u)]));
    let var_1 = countOneBits(select(abs(~(~vec2<u32>(arg_1, 0u))), ~vec2<u32>(4467u, ~99360u), vec2<bool>(_wgslsmith_div_f32(-102f, -805f) != arg_2.x, true)));
    global2 = array<f32, 5>();
    global3 = array<Struct_1, 12>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1605f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-799f - global2[_wgslsmith_index_u32(63497u, 5u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(830f - -116f) * arg_2.x))), 1062f);
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    var var_0 = arg_0.x;
    var var_1 = global3[_wgslsmith_index_u32(~((_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(58075u, 40968u), vec2<u32>(1u, 4294967295u)), 1u) << (1u % 32u)) >> (~_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 1u), vec2<u32>(5025u, 4294967295u), arg_0.zx), ~vec2<u32>(7229u, 24170u)) % 32u)), 12u)];
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(32278u, 5u)], 1000f)), _wgslsmith_f_op_f32(func_3(-16203i, 0u, vec2<f32>(-757f, global2[_wgslsmith_index_u32(29690u, 5u)]), Struct_1(vec4<i32>(var_1.a.x, var_1.a.x, 0i, 0i)))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 5u)], -1948f, false))))), true, true, _wgslsmith_f_op_f32(-788f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(93578u, 5u)])) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(106018u, 5u)]))));
    global3 = array<Struct_1, 12>();
    let var_3 = vec2<bool>(!(true && var_2.x), !arg_0.x);
    return ~_wgslsmith_clamp_i32(-1i, abs(firstLeadingBit(-2147483647i)), 1i << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(9821u, 17661u, 1u, 8958u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(85545u, 4294967295u, 1u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 73968u, 16114u, 7406u), vec4<u32>(14369u, 29963u, 73536u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 24681u))) % 32u));
}

fn func_4(arg_0: i32) -> Struct_1 {
    var var_0 = all(vec2<bool>(true, all(vec2<bool>(true, true))));
    global0 = ~firstLeadingBit(~(~1u));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 5u)], -632f, -146f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], 105f), vec3<f32>(473f, -1000f, 2180f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 5u)], 996f, 554f) + vec3<f32>(1000f, 903f, -946f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(644f, global2[_wgslsmith_index_u32(17997u, 5u)], global2[_wgslsmith_index_u32(54725u, 5u)]), vec3<f32>(global2[_wgslsmith_index_u32(4509u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(false, true, true)))), all(vec2<bool>(true, true)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -910f), -1000f, _wgslsmith_f_op_f32(-1265f * 1304f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2113f, _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(23111u, 5u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(29275u, 5u)])))) * vec3<f32>(var_1.x, global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(40312u, 5u)])));
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0, arg_0), _wgslsmith_sub_i32(u_input.a.x, -1i)), 22833i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, -2914i)) | max(45823i, 2147483647i), max(-1i, ~u_input.a.x))), abs(~(~vec3<i32>(-54664i, arg_0, 0i) | countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 0i)))));
    return global3[_wgslsmith_index_u32(24316u, 12u)];
}

fn func_1() -> vec4<i32> {
    global2 = array<f32, 5>();
    let var_0 = func_4(func_2(global1[_wgslsmith_index_u32(5991u, 18u)]));
    var var_1 = Struct_1(var_0.a);
    var var_2 = -185f;
    global0 = max(~abs(1u), 0u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(~_wgslsmith_div_vec4_i32(firstTrailingBit(max(vec4<i32>(u_input.a.x, -28150i, u_input.a.x, 30150i), vec4<i32>(14038i, -2147483647i, u_input.a.x, u_input.a.x))), abs(vec4<i32>(-8631i, 1i, -2147483647i, u_input.a.x))), firstTrailingBit(-(func_1() ^ select(vec4<i32>(-2147483647i, u_input.a.x, -41025i, -55510i), vec4<i32>(u_input.a.x, 10094i, u_input.a.x, 31936i), false))));
    let var_1 = Struct_1(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -96i, u_input.a.x, var_0.x), countOneBits(vec4<i32>(-20674i, var_0.x, var_0.x, u_input.a.x))), -_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.x, var_0.x, var_0.x), vec4<i32>(-19099i, 2147483647i, u_input.a.x, -2147483647i)))));
    global1 = array<vec3<bool>, 18>();
    var var_2 = global3[_wgslsmith_index_u32(~(~(~0u)), 12u)];
    let var_3 = _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~abs(64443u), 5u)]), !select(true, true, select(true, true, true)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(countOneBits(~4294967295u), 5u)])));
    global3 = array<Struct_1, 12>();
    global3 = array<Struct_1, 12>();
    var var_4 = ~vec4<i32>(min((u_input.a.x & var_1.a.x) & _wgslsmith_sub_i32(2147483647i, 2147483647i), 10161i), var_1.a.x, _wgslsmith_clamp_i32(2147483647i, min(var_1.a.x >> (0u % 32u), _wgslsmith_sub_i32(-1i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, 0i, 1i, 26002i), -vec4<i32>(var_2.a.x, 0i, var_1.a.x, -2147483647i))), 16295i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

