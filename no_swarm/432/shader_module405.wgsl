struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-257f, -269f, -1000f, 217f, 2021f, -1088f, -1000f, -291f, -958f, 436f, 639f, 198f);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 90161u, 0u);

var<private> global2: vec4<i32> = vec4<i32>(27248i, 11887i, -16001i, -31460i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    return reverseBits(~select(abs(1u), ~(~global1.x), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(723f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 12u)]) + _wgslsmith_f_op_f32(-1000f * -1368f)) - global0[_wgslsmith_index_u32(58746u, 12u)])))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(446f)), _wgslsmith_f_op_f32(714f - global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, reverseBits(25719u)), 12u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, firstTrailingBit(1u) ^ _wgslsmith_add_u32(func_3(global0[_wgslsmith_index_u32(61662u, 12u)], vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), select(1u, 4294967295u, false))), 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1.x, 12u)]))) - global0[_wgslsmith_index_u32(arg_1.x << (_wgslsmith_sub_u32(_wgslsmith_add_u32(4540u, 0u), 4294967295u ^ global1.x) % 32u), 12u)]));
    let var_2 = Struct_1(vec3<bool>((any(vec4<bool>(true, false, true, true)) | true) || true, false || (true != any(vec4<bool>(false, true, true, false))), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), arg_1, 8965i);
    let var_3 = Struct_2(abs(max(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 44836u), var_2.b.yy), firstLeadingBit(vec2<u32>(102109u, 0u)))), vec4<bool>(var_2.a.x, true, any(vec4<bool>(true, any(var_2.a), any(vec3<bool>(var_2.a.x, true, var_2.a.x)), false)), false), 107f, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global1.x, 29926u), arg_1.x, select(1u, _wgslsmith_mod_u32(66894u, var_2.b.x), true)), _wgslsmith_sub_vec3_u32(abs(abs(vec3<u32>(0u, arg_1.x, var_2.b.x))), vec3<u32>(41741u, _wgslsmith_sub_u32(global1.x, u_input.b), ~var_2.b.x))), vec2<i32>(0i, -32438i));
    global1 = vec3<u32>(u_input.b, abs(1u), ~(~4294967295u) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d, var_3.d), ~global1.zz), ~(~46116u)) % 32u));
    return Struct_2(var_3.a, select(!(!(!var_3.b)), vec4<bool>(true, !all(vec2<bool>(var_2.a.x, var_2.a.x)), true, !all(vec3<bool>(var_2.a.x, var_2.a.x, false))), select(vec4<bool>(var_2.a.x, var_3.b.x & true, any(var_3.b), true), !(!vec4<bool>(true, var_2.a.x, var_3.b.x, var_2.a.x)), vec4<bool>(!var_2.a.x, any(vec2<bool>(true, true)), -1i == global2.x, true || var_2.a.x))), 424f, arg_1.x, _wgslsmith_sub_vec2_i32(var_3.e, var_3.e));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = ~firstTrailingBit(min(global1.x, func_2(-1i, vec3<u32>(4294967295u, arg_2.d, 21424u)).a.x)) != _wgslsmith_sub_u32(1887u, 0u);
    let var_1 = func_2(~_wgslsmith_mult_i32(-1i, arg_1) | _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2.e.x, 0i), _wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(arg_2.e.x, arg_2.e.x, 57126i))), select(~arg_1, _wgslsmith_add_i32(arg_0.e.x, arg_1), arg_2.b.x)), ~(vec3<u32>(arg_2.d, 1u, 1u) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 7263u, 82374u), vec3<u32>(global1.x, arg_2.a.x, arg_0.d), vec3<u32>(arg_0.a.x, u_input.b, 1u)) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.c - arg_2.c)))));
    var var_3 = !func_2(reverseBits(-u_input.a.x), vec3<u32>(~(u_input.b & 33670u), ~select(u_input.b, 0u, arg_2.b.x), u_input.b)).b.yzz;
    global0 = array<f32, 12>();
    return true;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_1 {
    global2 = u_input.a;
    global1 = firstLeadingBit(~vec3<u32>(max(arg_1, 0u), _wgslsmith_clamp_u32(45364u, arg_0, u_input.b), 21233u) ^ ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 48347u, 0u), vec3<u32>(21993u, global1.x, u_input.b), vec3<u32>(4294967295u, global1.x, global1.x))));
    var var_0 = Struct_1(vec3<bool>((-1343f != _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 12u)]))) | true, true, func_4(func_2(-global2.x, vec3<u32>(arg_1, 1683u, 1u) & vec3<u32>(0u, global1.x, 1u)), -1i, Struct_2(~vec2<u32>(arg_1, 89502u), select(vec4<bool>(true, true, true, arg_2), vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(false, arg_2, arg_2, arg_2)), _wgslsmith_div_f32(-219f, 1319f), 25124u, -vec2<i32>(global2.x, 24229i)))), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(21355u, global1.x, 0u) >> (vec3<u32>(1u, 107826u, 1u) % vec3<u32>(32u)), vec3<u32>(0u, u_input.b, 4294967295u))) | _wgslsmith_sub_vec3_u32(firstTrailingBit(countOneBits(vec3<u32>(1u, 72671u, 4294967295u))), vec3<u32>(func_2(-6333i, vec3<u32>(arg_0, global1.x, 4294967295u)).d, arg_1, 42874u)), ~(~_wgslsmith_dot_vec3_i32(u_input.e ^ global2.zwx, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.e.x, -2147483647i, 0i)))));
    global2 = u_input.a;
    var var_1 = _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(~(u_input.a << (vec4<u32>(arg_0, u_input.b, arg_1, 15414u) % vec4<u32>(32u))), vec4<i32>(u_input.c.x, firstLeadingBit(0i), var_0.c, -2147483647i)), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -var_0.c, _wgslsmith_div_i32(var_0.c, 1i), 47971i) >> (~abs(vec4<u32>(arg_1, 0u, 16310u, arg_1)) % vec4<u32>(32u))));
    return Struct_1(!(!var_0.a), abs(var_0.b ^ vec3<u32>(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x), ~95808u, arg_0 | 1605u)), _wgslsmith_mult_i32(select(firstTrailingBit(-2147483647i), ~countOneBits(64419i), arg_2), reverseBits(2147483647i) & u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(104517u, 4294967295u, true);
    let var_1 = var_0.a.x;
    var var_2 = 20462u > global1.x;
    let var_3 = func_1(global1.x, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0.b.xy, var_0.b.yy), ~1u), var_0.a.x);
    var var_4 = max(~(-vec3<i32>(2147483647i, -28934i, var_0.c)), vec3<i32>(-2147483647i, -1i, -1i)) >> (var_3.b % vec3<u32>(32u));
    global0 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2212f), -598f)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(select(4294967295u, global1.x, true), 56739u), var_0.b.xx, global1.yz));
}

