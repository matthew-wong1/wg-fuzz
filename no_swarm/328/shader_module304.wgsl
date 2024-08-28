struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    return vec2<i32>(min(-_wgslsmith_mult_i32(1i, 0i) >> (_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(33850u, arg_2.a.x)) % 32u), 0i), -(_wgslsmith_add_i32(-56522i, 29064i) >> (~arg_2.a.x % 32u)));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global0 = array<bool, 3>();
    let var_0 = firstTrailingBit(func_3(any(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-115f, -757f, -2091f, -598f) * vec4<f32>(-1120f, 837f, 619f, 529f)))), Struct_1(u_input.a, select(!vec3<bool>(global0[_wgslsmith_index_u32(31840u, 3u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 3u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 3u)], false, true), true)))));
    let var_1 = Struct_4(Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-40142i, 0i, var_0.x, 1i)), -vec4<i32>(-2147483647i, 37839i, var_0.x, var_0.x)), _wgslsmith_sub_i32(~var_0.x, var_0.x >> (u_input.a.x % 32u))), Struct_1(vec2<u32>(max(u_input.a.x, 1u), _wgslsmith_mod_u32(arg_0, 4294967295u)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false), vec3<bool>(true, false, true))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, -1000f, -344f, -1477f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-619f, 2092f, -256f, -408f) + vec4<f32>(2446f, 831f, 868f, 789f))))), Struct_3(var_0.x, Struct_1((u_input.a & u_input.a) & vec2<u32>(u_input.a.x, 57759u), select(vec3<bool>(global0[_wgslsmith_index_u32(33302u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(33859u, 3u)], false, true), global0[_wgslsmith_index_u32(4294967295u, 3u)]))), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1259f, 736f, 253f, 560f), vec4<f32>(239f, -1639f, 2158f, -1791f), all(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])))))), select(~vec3<u32>(arg_0, arg_0 ^ arg_0, ~arg_0), ~select(vec3<u32>(arg_0, u_input.a.x, 1u), vec3<u32>(arg_0, 4294967295u, u_input.a.x), true) << (firstTrailingBit(~vec3<u32>(96420u, 1u, 2426u)) % vec3<u32>(32u)), select(vec3<bool>(any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_0, 3u)])), false, true), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 3u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(82191u, 3u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true, global0[_wgslsmith_index_u32(2311u, 3u)])), vec3<bool>(any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(4902u, 3u)])), false, global0[_wgslsmith_index_u32(48495u, 3u)] | global0[_wgslsmith_index_u32(arg_0, 3u)]))), vec4<i32>(var_0.x, var_0.x, ~var_0.x, -1i));
    global0 = array<bool, 3>();
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32((firstLeadingBit(var_0) << ((vec2<u32>(arg_0, 1u) & u_input.a) % vec2<u32>(32u))) | vec2<i32>(var_1.d.x, var_0.x & var_0.x), abs(abs(var_0))), ~select(_wgslsmith_mult_vec2_i32(firstLeadingBit(var_0), var_1.d.wz), firstTrailingBit(-var_0), !vec2<bool>(false, global0[_wgslsmith_index_u32(4624u, 3u)])));
    return vec3<bool>(false, var_1.b.b.b.x, var_1.a.b.b.x);
}

fn func_1() -> vec4<i32> {
    global0 = array<bool, 3>();
    var var_0 = !select(select(func_2(u_input.a.x), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true, false)), global0[_wgslsmith_index_u32(countOneBits(~52644u), 3u)]), func_2(min(u_input.a.x, u_input.a.x)), vec3<bool>(func_2(0u).x | (global0[_wgslsmith_index_u32(u_input.a.x, 3u)] || global0[_wgslsmith_index_u32(4294967295u, 3u)]), 0u != _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 3u)]));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var_0 = select(func_2(_wgslsmith_clamp_u32(~64595u, _wgslsmith_mult_u32(~0u, 1u), u_input.a.x)), vec3<bool>(func_2(_wgslsmith_add_u32(~16921u, u_input.a.x)).x, true, global0[_wgslsmith_index_u32(abs(countOneBits(abs(u_input.a.x))), 3u)]), !vec3<bool>(abs(4294967295u) < min(u_input.a.x, 65970u), false != !global0[_wgslsmith_index_u32(27454u, 3u)], true == !var_0.x));
    return vec4<i32>(-2812i, _wgslsmith_add_i32(~abs(-5597i), max(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-29852i, -2147483647i, -32957i, -2147483647i), vec4<i32>(-1i, 2147483647i, 5835i, 0i)), min(10506i, -49548i)), 1i)), _wgslsmith_mult_i32(-1i, countOneBits(-9145i)), i32(-1i) * -1i);
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, ~(arg_0.x | -1i)), 1i);
    let var_1 = -arg_0.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1118f)), _wgslsmith_f_op_f32(abs(-277f)), _wgslsmith_f_op_f32(select(-842f, 1431f, false)), -499f)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(1723f + _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x))))), -815f, _wgslsmith_f_op_f32(348f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1264f, -800f, global0[_wgslsmith_index_u32(8931u, 3u)])) + -1791f)))));
    global0 = array<bool, 3>();
    return Struct_1(u_input.a, !select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 4294967295u)), 3u)], true), false));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-588f, 1007f, -1278f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -287f, -277f, -424f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-588f, 341f, arg_0, arg_0) - vec4<f32>(-1680f, arg_0, -1788f, -729f))))))));
    let var_1 = select(vec4<bool>(true, arg_1.b.x, !all(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(1u, 3u)] || true), vec4<bool>(true, false, all(arg_1.b), !global0[_wgslsmith_index_u32(~(~0u), 3u)]), vec4<bool>(all(!(!vec4<bool>(arg_1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), arg_1.b.x, select(func_2(u_input.a.x).x, !global0[_wgslsmith_index_u32(~42477u, 3u)], any(!vec3<bool>(arg_1.b.x, false, arg_1.b.x))), !all(vec2<bool>(true, true))));
    var var_2 = false;
    var var_3 = firstTrailingBit(0u);
    global0 = array<bool, 3>();
    return func_4(abs(-abs(vec4<i32>(0i, 15759i, 2147483647i, 2147483647i))));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = vec3<i32>(~16909i, max(-1056i, ~(-(~(-8012i)))), ~_wgslsmith_div_i32(_wgslsmith_div_i32(-6348i, -19237i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-30272i, 34088i, 10107i), vec3<i32>(2147483647i, 17378i, 2147483647i)), firstTrailingBit(2147483647i) >> (4294967295u % 32u)));
    var var_1 = arg_1.a.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392f + -585f) + -132f), -136f, _wgslsmith_div_f32(-1000f, 1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(122f, -250f, 662f, 1454f), vec4<f32>(165f, -1018f, -872f, -1163f))))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-154f * -777f), 649f), 1f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1785f - 431f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1469f)) * 1965f) - _wgslsmith_f_op_f32(-1000f * -109f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(global0[_wgslsmith_index_u32(~(~85962u), 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1403f * 1000f)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1177f - -1302f))), true, any(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(4106u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(11565u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(func_6(u_input.a.x, Struct_1(u_input.a, var_0.xzy), func_5(1223f, func_4(func_1())))));
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -_wgslsmith_sub_i32(-6948i << (u_input.a.x % 32u), ~(-2147483647i)), 2147483647i, 12444i), ~(vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, 33854i, -2147483647i, -14198i))));
    var var_3 = select(u_input.a.x, u_input.a.x, true);
    let var_4 = u_input.a.x;
    var var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_6(26490u, Struct_1(u_input.a, var_0.zyw), Struct_1(vec2<u32>(45604u, u_input.a.x), var_0.wyy))))) - vec4<f32>(-318f, _wgslsmith_f_op_f32(-2802f * _wgslsmith_f_op_f32(select(123f, -1000f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1396f, var_1.a.x)) + _wgslsmith_f_op_f32(trunc(2381f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x - 529f))))));
    var var_6 = ~countOneBits(~(~(~vec2<u32>(var_4, u_input.a.x))));
    var_3 = u_input.a.x;
    var var_7 = Struct_1(u_input.a, var_0.zwz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.a.x, 409f, var_5.a.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1234f, -357f, -341f) - var_5.a.yxw)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1315f, var_5.a.x, var_1.a.x)))));
}

