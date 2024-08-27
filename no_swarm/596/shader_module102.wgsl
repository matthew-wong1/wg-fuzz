struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(4294967295u, vec2<i32>(0i, 0i)), Struct_1(72899u, vec2<i32>(-55866i, 0i)), Struct_1(74868u, vec2<i32>(-12092i, 0i)), Struct_1(1u, vec2<i32>(-92613i, 26522i)), Struct_1(43991u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(1u, vec2<i32>(2147483647i, 1i)), Struct_1(71782u, vec2<i32>(-39396i, 60363i)), Struct_1(0u, vec2<i32>(-1i, -574i)), Struct_1(58071u, vec2<i32>(-45142i, 1i)), Struct_1(12690u, vec2<i32>(36494i, 1i)), Struct_1(1u, vec2<i32>(-1i, 0i)), Struct_1(30778u, vec2<i32>(31498i, 16934i)), Struct_1(4294967295u, vec2<i32>(3218i, -29469i)), Struct_1(5464u, vec2<i32>(0i, -29335i)), Struct_1(39803u, vec2<i32>(16500i, 1i)), Struct_1(4294967295u, vec2<i32>(6163i, 2147483647i)), Struct_1(4294967295u, vec2<i32>(67420i, 31540i)), Struct_1(33057u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(0u, vec2<i32>(105001i, -12300i)), Struct_1(91031u, vec2<i32>(1i, -1i)), Struct_1(0u, vec2<i32>(36497i, i32(-2147483648))), Struct_1(1u, vec2<i32>(-2436i, 16050i)));

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, false, false, false, false, false, false, false, true, false, false, true, false, true, true, false, true);

var<private> global2: array<bool, 17>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(78843u), abs(u_input.a)), vec2<u32>(u_input.a, u_input.a | 4294967295u))), vec2<u32>(4294967295u, ((1u >> (0u % 32u)) | u_input.a) | 9386u));
    global1 = array<bool, 18>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(674f)), -430f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1734f, -212f, global1[_wgslsmith_index_u32(4294967295u, 18u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-902f)) - _wgslsmith_f_op_f32(select(-821f, _wgslsmith_f_op_f32(min(176f, -1364f)), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 17u)], true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1426f))))));
    let var_2 = global0[_wgslsmith_index_u32(~0u, 22u)];
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1952f, _wgslsmith_f_op_f32(max(1893f, var_1)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1406f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(-var_1))) * _wgslsmith_f_op_f32(1069f - _wgslsmith_f_op_f32(f32(-1f) * -830f))))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-13318i, 17952i, var_2.b.x, -33635i), vec4<i32>(2147483647i, var_2.b.x, -1i, var_2.b.x)), -var_2.b.x), ~_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_2.b.x, 1i)), ~var_2.b));
}

fn func_2() -> Struct_1 {
    var var_0 = (_wgslsmith_sub_vec2_i32(vec2<i32>(1i, func_3()), -vec2<i32>(0i, -52416i)) & vec2<i32>(1i, 1i)) ^ -min(vec2<i32>(14074i, _wgslsmith_mult_i32(30059i, 1i)), vec2<i32>(-1i) * -vec2<i32>(0i, -22770i));
    let var_1 = vec3<bool>(true & global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.a, 1u)), vec2<u32>(4294967295u, 33459u)), vec2<u32>(0u, firstLeadingBit(1u))), 17u)], !global2[_wgslsmith_index_u32(u_input.a, 17u)], all(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 18u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(36972u, 18u)]), global1[_wgslsmith_index_u32(u_input.a, 18u)]))));
    global0 = array<Struct_1, 22>();
    return global0[_wgslsmith_index_u32(4294967295u, 22u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = !global1[_wgslsmith_index_u32(~1u, 18u)];
    var var_2 = _wgslsmith_f_op_f32(-1144f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1950f)));
    var var_3 = 1u;
    global1 = array<bool, 18>();
    return Struct_2(countOneBits(~59373u), global0[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(0u, reverseBits(u_input.a), ~(~arg_2)), _wgslsmith_div_u32(17885u, u_input.a), var_1), 22u)], Struct_1(~_wgslsmith_mod_u32(countOneBits(var_0.a), ~arg_2), vec2<i32>(arg_0.x, abs(var_0.b.x) >> ((arg_2 >> (4294967295u % 32u)) % 32u))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_1(~51259u, arg_2.b.b);
    let var_1 = Struct_1(~(~func_2().a), vec2<i32>(func_2().b.x, var_0.b.x));
    let var_2 = select(select(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(58206u, 17u)], false, false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.a, 18u)], false, false), false)), vec4<bool>(false, any(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a, 17u)], false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 18u)], true), true)), global1[_wgslsmith_index_u32(var_0.a, 18u)], any(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(1u, 18u)]))), global2[_wgslsmith_index_u32(abs(~arg_0), 17u)]), select(select(select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(arg_0, 17u)], false, true), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_1.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 18u)], false, global1[_wgslsmith_index_u32(u_input.a, 18u)], true), vec4<bool>(global2[_wgslsmith_index_u32(arg_2.b.a, 17u)], false, false, global2[_wgslsmith_index_u32(4685u, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(45596u, 18u)], global2[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(var_0.a, 18u)]))), select(vec4<bool>(global2[_wgslsmith_index_u32(45269u, 17u)], global2[_wgslsmith_index_u32(arg_0, 17u)], global2[_wgslsmith_index_u32(arg_2.a, 17u)], global2[_wgslsmith_index_u32(arg_0, 17u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(105680u, 17u)], false, global2[_wgslsmith_index_u32(1u, 17u)], true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(13847u, 17u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(27237u, 17u)], false, global2[_wgslsmith_index_u32(14357u, 17u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 17u)], true, false, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], false, false, global2[_wgslsmith_index_u32(69441u, 17u)]), vec4<bool>(true, true, true, true))), global2[_wgslsmith_index_u32(1u, 17u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(~u_input.a, 18u)], any(vec3<bool>(true, global1[_wgslsmith_index_u32(55245u, 18u)], global2[_wgslsmith_index_u32(var_0.a, 17u)])), false), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.a, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)], false)), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(3868u, 18u)], global1[_wgslsmith_index_u32(var_1.a, 18u)], false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_1.a, 17u)], global1[_wgslsmith_index_u32(arg_0, 18u)]), global1[_wgslsmith_index_u32(arg_2.b.a, 18u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.a, 18u)], false, global1[_wgslsmith_index_u32(var_0.a, 18u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 18u)], global2[_wgslsmith_index_u32(11926u, 17u)], global1[_wgslsmith_index_u32(1u, 18u)]))), max(arg_1.a, arg_0) > ~_wgslsmith_dot_vec2_u32(vec2<u32>(24498u, var_0.a), vec2<u32>(0u, 8631u))), !vec4<bool>(_wgslsmith_f_op_f32(round(-1041f)) == _wgslsmith_f_op_f32(min(-1000f, -1068f)), false, global1[_wgslsmith_index_u32(arg_1.a, 18u)], global2[_wgslsmith_index_u32(arg_2.a, 17u)] | !global2[_wgslsmith_index_u32(1u, 17u)]));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-403f)))));
    let var_4 = !global2[_wgslsmith_index_u32(arg_2.c.a, 17u)];
    return abs(17832u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(~u_input.a & ~u_input.a), Struct_1(max(u_input.a, func_4(u_input.a, global0[_wgslsmith_index_u32(~u_input.a, 22u)], func_1(vec2<i32>(3348i, 2147483647i), -464f, 13823u))), _wgslsmith_add_vec2_i32(vec2<i32>(~0i, 1i), ~_wgslsmith_mult_vec2_i32(vec2<i32>(40795i, 0i), vec2<i32>(-5638i, -24334i)))), Struct_1(u_input.a, reverseBits(~vec2<i32>(0i, -1i))));
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    global0 = array<Struct_1, 22>();
    var var_1 = (vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(20702u, var_0.c.a), vec2<u32>(var_0.c.a, 56313u)), ~vec2<u32>(11639u, 19896u)), func_2().a) ^ select(vec3<u32>(3972u, ~21410u, _wgslsmith_sub_u32(u_input.a, u_input.a)), vec3<u32>(func_4(var_0.b.a, global0[_wgslsmith_index_u32(627u, 22u)], Struct_2(1u, global0[_wgslsmith_index_u32(13559u, 22u)], Struct_1(15066u, vec2<i32>(var_0.b.b.x, var_0.b.b.x)))), var_0.b.a, _wgslsmith_add_u32(7735u, var_0.a)), !select(vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(11569u, 18u)], false, global2[_wgslsmith_index_u32(var_0.b.a, 17u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_0.c.a, 17u)])))) ^ ~(~max(abs(vec3<u32>(0u, 31772u, u_input.a)), abs(vec3<u32>(1u, 37244u, 24575u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, min(4294967295u, var_1.x)) | func_2().a, ~(~1u | ~var_0.b.a)), 4294967295u, ~(-vec4<i32>(_wgslsmith_sub_i32(var_0.c.b.x, var_0.c.b.x), 21495i, _wgslsmith_mod_i32(var_0.b.b.x, -3449i), -56249i << (var_0.c.a % 32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-164f)) - 1133f), -411f), vec3<i32>(firstLeadingBit(~(0i ^ var_0.c.b.x)), ~(~2147483647i ^ -var_0.c.b.x), -var_0.b.b.x));
}

