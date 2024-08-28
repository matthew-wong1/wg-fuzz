struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, -23583i, -1197i);

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 10> = array<bool, 10>(true, true, false, true, false, false, false, false, true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(u_input.d), reverseBits(0i), ~u_input.d, _wgslsmith_clamp_i32(2147483647i, u_input.d, -10151i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, u_input.d, u_input.c, 2147483647i), vec4<i32>(u_input.c, 46962i, u_input.c, global0.x), vec4<i32>(u_input.c, u_input.d, 1i, u_input.d)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -67214i, -18801i, -33815i), vec4<i32>(-1201i, global0.x, global0.x, global0.x))) | select(~(~vec4<i32>(3107i, -1i, 2147483647i, u_input.d)), abs(-vec4<i32>(15561i, 11405i, -27273i, u_input.c)), true));
    let var_1 = arg_0;
    global0 = var_0;
    global2 = array<bool, 10>();
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(702f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x))), select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 10u)], !(!global2[_wgslsmith_index_u32(0u, 10u)]), !any(vec2<bool>(true, global2[_wgslsmith_index_u32(57883u, 10u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2265f, -142f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), global1.x < 216f)) * global1.x)));
    return Struct_1(_wgslsmith_div_vec4_i32(~abs(vec4<i32>(u_input.c, -1i, u_input.d, -38671i)), var_0), vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + global1.x), 897f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) - global1.x) - global1.x)));
}

fn func_3() -> vec4<i32> {
    let var_0 = func_2(vec3<u32>(0u, countOneBits(~u_input.a), u_input.b << ((u_input.b ^ u_input.a) % 32u)) | vec3<u32>(4294967295u, ~countOneBits(u_input.b), 1u));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + global1.x) + global1.x), _wgslsmith_f_op_f32(-493f + _wgslsmith_f_op_f32(round(var_0.b.x)))))), _wgslsmith_f_op_f32(ceil(-938f)), _wgslsmith_f_op_f32(var_0.b.x - -827f));
    let var_1 = ~((-func_2(vec3<u32>(4294967295u, 38705u, u_input.a)).a.yyy << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 18440u, 4294967295u) << (vec3<u32>(4294967295u, u_input.b, u_input.a) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.a, 28899u, 12258u)), countOneBits(vec3<u32>(u_input.b, u_input.b, 1u))) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(abs(global0.wxw), countOneBits(_wgslsmith_add_vec3_i32(global0.yyx, vec3<i32>(var_0.a.x, u_input.d, -2147483647i))), -global0.zzz));
    let var_2 = (i32(-1i) * -global0.x) & _wgslsmith_clamp_i32(24750i << (u_input.b % 32u), u_input.c, var_0.a.x);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1987f))), 819f, _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(abs(var_0.b.x)))));
    return var_0.a | ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-3874i, var_1.x, -52087i, var_0.a.x)), vec4<i32>(21889i, 2147483647i | var_0.a.x, ~u_input.d, firstTrailingBit(-22596i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_1(~vec4<i32>(_wgslsmith_add_i32(-2147483647i, global0.x) ^ ~arg_0.a.x, func_2(~vec3<u32>(25986u, 1u, 20664u)).a.x, -u_input.c, func_2(~vec3<u32>(53931u, 91463u, u_input.b)).a.x), arg_0.b);
    return u_input.b;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = vec4<u32>(func_4(func_2(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a, 1u, u_input.b)), vec3<u32>(0u, 19373u, 1u))), _wgslsmith_add_vec4_i32(max(func_3(), abs(vec4<i32>(global0.x, u_input.c, 37680i, global0.x))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, global0.x, global0.x, -15166i), abs(vec4<i32>(1i, global0.x, u_input.c, global0.x))))), abs(u_input.b), u_input.b, 0u | u_input.b);
    let var_1 = Struct_1(-(~_wgslsmith_mod_vec4_i32(-vec4<i32>(global0.x, global0.x, -2147483647i, 2147483647i), -vec4<i32>(global0.x, u_input.d, -35413i, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * global1.x), global1.x, _wgslsmith_f_op_f32(949f * -1854f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-226f, 1277f, 507f, 2246f) + vec4<f32>(-740f, 649f, 1000f, arg_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-461f, 847f, 302f, 293f) * vec4<f32>(global1.x, 593f, 197f, global1.x))))));
    let var_2 = Struct_1(vec4<i32>(u_input.d, max(global0.x, abs(global0.x) & 1i), abs(-41367i), ~_wgslsmith_mod_i32(2147483647i, global0.x)), _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(133f * global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(-499f, global1.x), _wgslsmith_f_op_f32(abs(-437f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_1.b))))));
    let var_3 = var_2;
    global0 = countOneBits(-_wgslsmith_mult_vec4_i32(var_2.a, _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_2.a.x, 0i, -12310i, 2147483647i)), ~var_1.a)));
    return -_wgslsmith_mod_i32(-6200i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, abs(global0.x), func_2(var_0.yyx).a.x, u_input.d), ~(vec4<i32>(-3559i, u_input.c, -36133i, 40564i) | var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.b) >> (reverseBits(1u) % 32u), 1u)), ~vec2<u32>(_wgslsmith_mult_u32(1u, u_input.a | u_input.a), 6216u));
    let var_1 = Struct_1(vec4<i32>(-firstLeadingBit(16545i), func_1(global1.x, global2[_wgslsmith_index_u32(4294967295u, 10u)] || false, global2[_wgslsmith_index_u32(~1u, 10u)]) >> (u_input.a % 32u), u_input.c, _wgslsmith_add_i32(~(~u_input.d), -18836i)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 215f))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1441f)), global1.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1010f, global1.x, 504f, 486f) + vec4<f32>(2057f, global1.x, global1.x, global1.x)), vec4<f32>(global1.x, -1296f, 334f, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1734f, 1000f, -710f, 100f) * vec4<f32>(global1.x, global1.x, 311f, -1150f)))))));
    var var_2 = select(vec2<bool>(global2[_wgslsmith_index_u32(31054u, 10u)], false), select(!(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 10u)]))), select(vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.x ^ u_input.b, 10u)]), !select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], true), vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 10u)], false)), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 10u)], true), global2[_wgslsmith_index_u32(~var_0.x, 10u)])), vec2<bool>(true, true)), true);
    let var_3 = 66031u;
    var var_4 = vec2<bool>((~26128u != (u_input.a >> (_wgslsmith_sub_u32(30976u, 22398u) % 32u))) != !(!global2[_wgslsmith_index_u32(16925u, 10u)]), !(_wgslsmith_f_op_f32(-1863f * _wgslsmith_f_op_f32(-global1.x)) < -1350f));
    let var_5 = true;
    let var_6 = global0.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-26718i, -50762i)), ~(-(~var_1.a.yw))), select(1i, -var_6.x | -21325i, false), abs(abs(~1u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 45951u, u_input.a), vec4<u32>(var_3, 4294967295u, var_3, var_0.x)))), _wgslsmith_f_op_vec2_f32(-global1.zy));
}

