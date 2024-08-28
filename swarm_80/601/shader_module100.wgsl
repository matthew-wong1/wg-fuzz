struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(17109u, 31447u, 34361u, 4294967295u, 1u, 1u, 11457u);

var<private> global1: array<i32, 11>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> vec3<bool> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mult_u32(36617u, _wgslsmith_mult_u32(4294967295u, global2.a & arg_0.a));
    var var_2 = !select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0.b, false), vec3<bool>(true, -74391i > u_input.a, any(vec3<bool>(false, true, false))), arg_0.b | var_0.b), vec3<bool>(var_0.b, arg_0.b, global2.b));
    let var_3 = arg_0;
    var var_4 = select(select(!vec4<bool>(!global2.b, !arg_0.b, var_3.b, global2.b), !vec4<bool>(true, all(vec4<bool>(false, false, global2.b, true)), var_2.x, select(true, var_0.b, var_3.b)), select(select(vec4<bool>(false, false, true, var_0.b), vec4<bool>(var_2.x, false, var_0.b, true), select(var_0.b, var_2.x, var_0.b)), select(vec4<bool>(var_3.b, false, false, true), !vec4<bool>(false, var_0.b, true, arg_0.b), vec4<bool>(true, var_0.b, false, var_2.x)), true)), !vec4<bool>((global0[_wgslsmith_index_u32(0u, 7u)] << (u_input.b % 32u)) < _wgslsmith_mult_u32(var_0.a, var_3.a), _wgslsmith_f_op_f32(floor(-1000f)) < _wgslsmith_f_op_f32(f32(-1f) * -526f), select(false & global2.b, true, true), !any(var_2.xx)), !vec4<bool>(any(select(vec3<bool>(var_3.b, false, false), vec3<bool>(var_2.x, false, false), vec3<bool>(true, true, global2.b))), arg_0.b, global2.b, -1i <= ~global1[_wgslsmith_index_u32(var_3.a, 11u)]));
    return vec3<bool>(false, global2.b, arg_1.x != ~u_input.a);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = arg_1.x;
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~(~3614u)) | arg_1, _wgslsmith_add_vec2_u32(arg_1, countOneBits(arg_1)));
    var var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~8997u, ~abs(global0[_wgslsmith_index_u32(4294967295u, 7u)])), global2.a), true);
    let var_2 = Struct_1(var_1.a, any(!(!vec4<bool>(global2.b, false, true, global2.b))));
    var var_3 = select(!vec3<bool>(false, !global2.b, !(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59650u, 7u)], 7u)], 11u)] < 2147483647i)), !select(select(func_3(var_2, vec3<i32>(-2147483647i, u_input.a, 1i), 2147483647i), !vec3<bool>(var_1.b, false, var_1.b), !vec3<bool>(var_1.b, false, false)), vec3<bool>(true, true, true), firstLeadingBit(37983u) == _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 7u)], u_input.b, global0[_wgslsmith_index_u32(u_input.b, 7u)])), vec3<bool>(false, var_1.b, (u_input.a != _wgslsmith_clamp_i32(u_input.a, 5876i, 10710i)) && global2.b));
    return func_3(Struct_1(~15098u, !select(var_1.b, true, var_3.x) || !var_3.x), vec3<i32>(_wgslsmith_div_i32(-38473i, -909i), _wgslsmith_mod_i32(max(global1[_wgslsmith_index_u32(min(global2.a, 1u), 11u)], -global1[_wgslsmith_index_u32(var_1.a, 11u)]), 0i), -firstTrailingBit(global1[_wgslsmith_index_u32(countOneBits(25039u), 11u)])), 58871i);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f * -589f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2255f, -1000f)) * 246f))));
    var_0 = _wgslsmith_f_op_f32(min(-829f, -1000f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-426f * 985f), _wgslsmith_f_op_f32(f32(-1f) * -334f)))));
    let var_1 = ~reverseBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, u_input.b)), ~vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global2.a, 7u)]))) >> ((36650u | min(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(14450u, u_input.b), 29140u))) % 32u);
    let var_2 = any(select(vec3<bool>(true, any(vec4<bool>(true, global2.b, false, global2.b)), u_input.a != 12637i), select(select(vec3<bool>(global2.b, false, global2.b), select(vec3<bool>(global2.b, global2.b, global2.b), vec3<bool>(global2.b, true, global2.b), global2.b), vec3<bool>(true, true, global2.b)), select(select(vec3<bool>(false, false, true), vec3<bool>(global2.b, global2.b, true), true), !vec3<bool>(true, true, global2.b), func_2(344f, vec2<u32>(u_input.b, u_input.b))), any(vec4<bool>(false, false, global2.b, global2.b)) && all(vec2<bool>(false, global2.b))), func_3(Struct_1(firstLeadingBit(global2.a), u_input.a < 0i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 11u)] >> (var_1 % 32u), max(-2147483647i, u_input.a), u_input.a), _wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(1537u, 11u)]))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(1u, 11u)], firstLeadingBit(u_input.a)), firstLeadingBit(select(vec2<i32>(1i, u_input.a) >> (vec2<u32>(global2.a, var_1) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(52128u, 11u)]), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(83910u, 11u)])), global2.b))), vec2<i32>(u_input.a, 2147483647i) << (vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1, 0u >> (u_input.b % 32u)), 7u)], _wgslsmith_add_u32(0u, 31043u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = Struct_1(~(~(~arg_3)), false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)), -1134f)));
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1360f, 1858f, arg_2)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, var_1) + vec3<f32>(var_1, arg_2, 1949f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1202f, -114f, arg_2), vec3<f32>(803f, 185f, var_1))))))) * vec3<f32>(arg_2, var_1, var_1));
    var_2 = all(select(vec4<bool>(select(var_3.x != arg_2, true, false), global2.b, _wgslsmith_f_op_f32(var_1 * -317f) < -1173f, arg_0), !vec4<bool>(var_0.a == 35227u, any(vec3<bool>(global2.b, false, var_0.b)), func_3(var_0, vec3<i32>(arg_1, arg_1, 1i), u_input.a).x, all(vec2<bool>(false, true))), !select(vec4<bool>(false, global2.b, true, arg_0), vec4<bool>(false, false, global2.b, var_0.b), false)));
    return global0[_wgslsmith_index_u32(45598u, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(40350u, 980u >> (u_input.b % 32u)), 18442u, u_input.b ^ _wgslsmith_div_u32(u_input.b, 0u));
    let var_1 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b << (u_input.b % 32u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(34131u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), 4294967295u | var_0.x, min(4294967295u, var_0.x)), vec4<u32>(u_input.b, 1u, 1u, min(0u, 37814u))));
    global0 = array<u32, 7>();
    var var_2 = !all(vec2<bool>(all(vec3<bool>(true, global2.b, false)), true));
    var var_3 = Struct_1(func_4(all(!select(vec4<bool>(false, global2.b, true, global2.b), vec4<bool>(global2.b, global2.b, global2.b, true), vec4<bool>(false, false, global2.b, false))), func_1(), _wgslsmith_f_op_f32(step(-1208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) - _wgslsmith_f_op_f32(select(541f, 608f, true))))), ~var_0.x), all(vec2<bool>(true, !global2.b != (global1[_wgslsmith_index_u32(32905u, 11u)] != u_input.a))));
    global0 = array<u32, 7>();
    global1 = array<i32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0i), var_1.x, ~(-36201i), select(vec2<u32>(~countOneBits(u_input.b), var_1.x), vec2<u32>((7820u >> (var_0.x % 32u)) << (~var_1.x % 32u), ~(~global2.a)), any(func_3(Struct_1(1u, false), -vec3<i32>(u_input.a, -1198i, global1[_wgslsmith_index_u32(var_0.x, 11u)]), 0i).xx)), vec4<i32>(countOneBits(22851i), ~u_input.a, (_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 11u)], 38218i, global1[_wgslsmith_index_u32(19892u, 11u)]), vec3<i32>(u_input.a, u_input.a, u_input.a)) | u_input.a) | countOneBits(global1[_wgslsmith_index_u32(var_1.x & var_0.x, 11u)]), 2565i));
}

