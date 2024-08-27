struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: vec3<i32> = vec3<i32>(-62959i, -31148i, 12032i);

var<private> global2: array<vec2<u32>, 2>;

var<private> global3: array<f32, 21>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    return ~abs(_wgslsmith_mod_vec3_i32(~arg_0.b, -vec3<i32>(global1.x, global1.x, 2147483647i))) >> (u_input.a.zxz % vec3<u32>(32u));
}

fn func_2() -> i32 {
    let var_0 = all(vec3<bool>(global0[_wgslsmith_index_u32(~1u, 16u)], any(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true, true, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec4<bool>(true, true, false, true), false)), true));
    let var_1 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(global1.x, -1i, global1.x)), ~(~vec3<i32>(-16799i, global1.x, global1.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(min(-33840i, global1.x), global1.x & 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -23081i, 8004i, global1.x), vec4<i32>(global1.x, global1.x, -1i, -1174i))), abs(~vec3<i32>(-30663i, global1.x, global1.x))), func_3(Struct_1(reverseBits(vec4<u32>(4294967295u, u_input.b.x, 0u, 157126u)), _wgslsmith_sub_vec3_i32(vec3<i32>(21260i, 33608i, global1.x), vec3<i32>(global1.x, global1.x, global1.x)), vec2<i32>(0i, global1.x) >> (vec2<u32>(8140u, 86314u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(276f, global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(u_input.a.x, 21u)]) * vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], global3[_wgslsmith_index_u32(u_input.b.x, 21u)], -1077f)), global1.x)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 21u)])))))), 367f, global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 21u)]);
    global2 = array<vec2<u32>, 2>();
    global0 = array<bool, 16>();
    return -min(-min(abs(global1.x), global1.x), _wgslsmith_mod_i32(-2659i, global1.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> bool {
    global1 = vec3<i32>(func_2(), ~func_3(arg_1).x, ~(-53809i << (~4294967295u % 32u)) << (_wgslsmith_mod_u32(arg_0.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 4294967295u, 78238u), u_input.a.yyx) % 32u), ~arg_0.a.x) % 32u));
    let var_0 = arg_0.b;
    var var_1 = vec4<f32>(-1902f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)) * _wgslsmith_f_op_f32(f32(-1f) * -1187f)), _wgslsmith_f_op_f32(-arg_0.d.x), 1296f);
    global3 = array<f32, 21>();
    global0 = array<bool, 16>();
    return arg_0.d.x != _wgslsmith_f_op_f32(-343f * -185f);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(u_input.a, vec3<i32>(~global1.x, countOneBits(9209i), i32(-1i) * -2147483647i), vec2<i32>(i32(-1i) * -max(13198i, 2147483647i), _wgslsmith_div_i32(global1.x, ~(-1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-754f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(0u, 21u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyz, u_input.a.zzy), 21u)])))), global1.x);
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(46050u, 0u, var_0.a.x)), vec3<u32>(~_wgslsmith_div_u32(4294967295u, 72130u), _wgslsmith_clamp_u32(~u_input.b.x, countOneBits(u_input.a.x), abs(0u)), ~5942u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(abs(var_0.a.x), _wgslsmith_sub_u32(u_input.b.x, 84826u), u_input.b.x), vec3<u32>(4294967295u, _wgslsmith_sub_u32(4315u, var_0.a.x), u_input.b.x)));
    global0 = array<bool, 16>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-528f, global3[_wgslsmith_index_u32(u_input.a.x, 21u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(14123u, 21u)]))))) + var_0.d.x));
    let var_3 = Struct_1(select(_wgslsmith_div_vec4_u32(abs(var_0.a), vec4<u32>(0u, 71432u, 0u, u_input.b.x)) & u_input.a, min(reverseBits(u_input.a), ~(~var_0.a)), select(!(!vec4<bool>(arg_1.x, arg_1.x, true, false)), arg_1, true)), -_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global1.x, 4157i), var_0.b), select(var_0.b, vec3<i32>(-1i, var_0.e, global1.x), arg_1.x)), var_0.b), select(global1.zz, min(abs(~vec2<i32>(global1.x, 75956i)), vec2<i32>(firstLeadingBit(2147483647i), -25676i)), vec2<bool>(true, !func_1(var_0, Struct_1(u_input.a, var_0.b, global1.xx, var_0.d, -16780i), var_0.a, arg_1.x))), var_0.d, global1.x);
    return Struct_1(~vec4<u32>(var_0.a.x, ~abs(45300u), 0u, firstLeadingBit(var_1.x | 63875u)), var_3.b, max(_wgslsmith_mod_vec2_i32(vec2<i32>(70030i, _wgslsmith_clamp_i32(-1031i, global1.x, var_3.b.x)), vec2<i32>(select(var_0.e, var_0.e, true), ~0i)), abs(_wgslsmith_mult_vec2_i32(var_0.b.zz, select(var_3.b.yy, var_0.b.yz, arg_1.zy)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(var_3.d, vec3<f32>(var_0.d.x, 1093f, var_3.d.x))), _wgslsmith_f_op_vec3_f32(-var_0.d))) * var_0.d)), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(abs(~u_input.a), u_input.a);
    global2 = array<vec2<u32>, 2>();
    let var_1 = func_4(((true | all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))) | false) & global0[_wgslsmith_index_u32(81668u, 16u)], select(!vec4<bool>(!global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], true, !global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), !vec4<bool>(!global0[_wgslsmith_index_u32(0u, 16u)], func_1(Struct_1(u_input.a, vec3<i32>(-15068i, global1.x, 2147483647i), global1.xz, vec3<f32>(1320f, global3[_wgslsmith_index_u32(u_input.b.x, 21u)], 199f), 4573i), Struct_1(vec4<u32>(var_0, 4294967295u, 1u, 98662u), vec3<i32>(global1.x, 3213i, global1.x), global1.yx, vec3<f32>(-972f, -1000f, 336f), 21120i), u_input.a, false), !global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(13843u, 16u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(19512u, 16u)], global0[_wgslsmith_index_u32(10562u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true), !vec4<bool>(true, global0[_wgslsmith_index_u32(var_0, 16u)], false, false), global0[_wgslsmith_index_u32(~var_0, 16u)])));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.a.wy, ~vec2<u32>(~var_0, var_0)), 21u)];
    global3 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.b.x, 11248i, -2147483647i), -vec3<i32>(24439i, 2147483647i, global1.x)), -_wgslsmith_div_vec3_i32(var_1.b, vec3<i32>(-1i, 2147483647i, global1.x))), ~vec3<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(var_1.e, 62917i, global1.x), -1i)), var_1.e);
}

