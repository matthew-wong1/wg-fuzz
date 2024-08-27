struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(1i, 70455i, 2147483647i, 12184i, 8814i, 1i, -40017i, -22316i, 1i, 2147483647i, -22536i, i32(-2147483648), 73844i, 2340i, -65445i, -20286i, 1i);

var<private> global1: vec2<f32> = vec2<f32>(707f, 119f);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<u32, 15>;

var<private> global4: array<vec3<bool>, 29>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    var var_0 = firstLeadingBit(select(63664i, ~_wgslsmith_mod_i32(1i, -40508i), true)) | (u_input.b << ((_wgslsmith_mod_u32(select(19247u, global3[_wgslsmith_index_u32(u_input.a, 15u)], true), _wgslsmith_sub_u32(4294967295u, 54537u)) >> (38431u % 32u)) % 32u));
    let var_1 = Struct_2(global2.x || true, global2.x);
    return Struct_2(!(arg_1 < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(529f)), _wgslsmith_div_f32(2230f, 547f)))), global2.x);
}

fn func_3() -> bool {
    var var_0 = all(select(select(vec4<bool>(true, global2.x, !global2.x, false), select(!vec4<bool>(true, global2.x, true, false), select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(true, global2.x, true, global2.x)), !global2.x), !select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(false, false, global2.x, true), vec4<bool>(global2.x, true, false, global2.x))), select(select(!vec4<bool>(false, global2.x, global2.x, global2.x), !vec4<bool>(true, global2.x, global2.x, global2.x), any(global4[_wgslsmith_index_u32(6575u, 29u)])), vec4<bool>(false, global2.x & global2.x, true, true), vec4<bool>(!global2.x, global2.x, true, false)), select(!select(vec4<bool>(false, true, global2.x, false), vec4<bool>(global2.x, true, global2.x, false), false), select(select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, true, false, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), vec4<bool>(true, false, false, global2.x), all(global4[_wgslsmith_index_u32(u_input.a, 29u)])), false)));
    var var_1 = func_1(true, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1f) * -860f)));
    var_0 = !(!(countOneBits(firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 15u)], 15u)])) >= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(53620u, 15u)], u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 72261u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u))), 15u)], 15u)], 15u)]));
    let var_2 = Struct_2(true, all(vec4<bool>(firstLeadingBit(-12167i) >= firstTrailingBit(u_input.b), true, !(global1.x == global1.x), all(select(vec4<bool>(var_1.a, false, var_1.a, var_1.a), vec4<bool>(true, true, global2.x, true), true)))));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(ceil(-1009f))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.x)))), _wgslsmith_f_op_f32(ceil(-708f)));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    global0 = array<i32, 17>();
    var var_0 = Struct_1(vec3<bool>(global2.x, any(vec4<bool>(false, func_3(), true, select(false, false, false))), true));
    global2 = !var_0.a.yy;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-global1.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(global1.x, -1437f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -797f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(126f, -199f) + vec2<f32>(1986f, 741f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-443f, global1.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(499f, arg_0), vec2<f32>(437f, 144f), false)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 504f)))))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1362f, _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(select(-1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1532f)), u_input.c > (i32(-1i) * -2147483647i)))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~global0[_wgslsmith_index_u32(1u, 17u)], min(max(21227i, u_input.b), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(90596u, 56933u), 17u)]), -u_input.b, _wgslsmith_div_i32(~(-37693i), u_input.b << (arg_1.x % 32u))), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(global0[_wgslsmith_index_u32(28222u, 17u)], u_input.c, u_input.c, 0i)), vec4<i32>(-1i, 2147483647i, 26608i, -1i) ^ countOneBits(vec4<i32>(u_input.c, 1i, -1i, u_input.b)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.c, 29066i), vec4<i32>(10210i, u_input.c, global0[_wgslsmith_index_u32(19292u, 17u)], 9561i))))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(~vec4<i32>(-2147483647i, u_input.b, u_input.c, 34276i), vec4<i32>(2147483647i, u_input.c, 18646i, 2147483647i), !vec4<bool>(var_0.a.x, true, false, global2.x)), vec4<i32>(-1i, u_input.c, ~global0[_wgslsmith_index_u32(1u, 17u)], -1489i)), vec4<i32>(global0[_wgslsmith_index_u32(min(u_input.a, 4729u), 17u)], 1i, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(arg_1.x, 17u)] & u_input.c) << (_wgslsmith_sub_vec4_u32(arg_1, arg_1) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))));
    var var_1 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - global1.x) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-849f)))) == _wgslsmith_f_op_f32(198f - _wgslsmith_f_op_f32(floor(var_0))), 773f);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, global1.x)), var_0);
    let var_3 = abs(func_2(843f, vec4<u32>(47961u, 84394u, _wgslsmith_mult_u32(_wgslsmith_add_u32(69776u, global3[_wgslsmith_index_u32(u_input.a, 15u)]), global3[_wgslsmith_index_u32(21007u, 15u)] << (4294967295u % 32u)), _wgslsmith_mult_u32(firstTrailingBit(0u), abs(0u)))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -469f) * _wgslsmith_f_op_f32(max(-820f, -232f))) * _wgslsmith_f_op_f32(f32(-1f) * -118f))));
    let var_4 = _wgslsmith_sub_vec3_i32(~select((vec3<i32>(-2147483647i, var_3, -7096i) & vec3<i32>(var_3, -2147483647i, 2147483647i)) >> (firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 9969u)) % vec3<u32>(32u)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 0i, global0[_wgslsmith_index_u32(1u, 17u)]), vec3<i32>(u_input.c, 2147483647i, global0[_wgslsmith_index_u32(1u, 17u)]))), select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(var_1.b, false, var_1.b), true)), ~max(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 17u)], var_3), vec3<i32>(var_3, 1i, u_input.c)), abs(vec3<i32>(-73699i, 25401i, 1i))) & _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -55700i, -49476i, _wgslsmith_add_i32(9526i, -2456i)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, var_3, global0[_wgslsmith_index_u32(0u, 17u)]), vec3<i32>(u_input.b, 0i, 5731i)), ~vec3<i32>(var_3, 62059i, var_3))));
    var var_5 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_2, 1000f) + vec3<f32>(var_0, var_2, var_2))))))));
    global1 = var_5.yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(u_input.a, abs(22971u)), abs(global3[_wgslsmith_index_u32(u_input.a | _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 4294967295u), 15u)]), _wgslsmith_div_u32(1u, ~global3[_wgslsmith_index_u32(89350u, 15u)]) >> (global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(1u, 15u)]), 15u)] % 32u), 18568u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1205f, var_2, 923f, 448f) - vec4<f32>(1660f, var_0, -578f, var_5.x)))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(global1.x * -1336f), 574f, _wgslsmith_f_op_f32(-global1.x)))));
}

