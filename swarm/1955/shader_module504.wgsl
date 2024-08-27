struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * arg_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.d.x, arg_1.d.x)))))), arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(457f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x - 1000f), _wgslsmith_f_op_f32(trunc(var_0.d.x))), _wgslsmith_f_op_f32(select(1413f, -231f, all(vec4<bool>(arg_1.b, false, false, true)))))));
    global1 = array<vec2<bool>, 5>();
    let var_2 = Struct_1(arg_1.a, !select(true, any(vec4<bool>(var_0.b, arg_1.b, false, false)), arg_0.e == countOneBits(-76068i)), ~vec4<i32>(-(61709i << (global0[_wgslsmith_index_u32(34987u, 29u)] % 32u)), ~_wgslsmith_add_i32(0i, -2147483647i), ~(~2147483647i), ~arg_0.a & ~u_input.b), _wgslsmith_div_vec2_f32(var_0.d, arg_0.d), _wgslsmith_mod_i32(2941i, 2147483647i >> (global0[_wgslsmith_index_u32(1u << (min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31434u, 29u)], 29u)], 0u) % 32u), 29u)] % 32u)));
    return vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 29u)]), vec2<u32>(global0[_wgslsmith_index_u32(58832u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)])), ~vec2<u32>(347u, global0[_wgslsmith_index_u32(4294967295u, 29u)])), 29u)], 29u)], ~global0[_wgslsmith_index_u32(firstLeadingBit(6915u) >> (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57720u, 29u)], 29u)]), 29u)] % 32u), 29u)], abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4132u, 29u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38688u, 29u)], 29u)], 29u)] % 32u), 29u)], ~29582u))) & _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(2944u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(24125u, 29u)], 27318u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(95014u, 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35068u, 29u)], 29u)], 29u)], 92925u), vec3<u32>(62477u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38723u, 29u)], 29u)], 4294967295u))), vec3<u32>(58422u, 55704u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)] % 32u), _wgslsmith_div_u32(1u, 12827u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 29u)], 74306u), firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79527u, 29u)], 29u)], 29u)], 1u, 80767u))) ^ (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 25850u, 1u) >> (firstLeadingBit(vec3<u32>(55469u, 4294967295u, 36202u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    global1 = array<vec2<bool>, 5>();
    global1 = array<vec2<bool>, 5>();
    global1 = array<vec2<bool>, 5>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 1260f) * _wgslsmith_f_op_f32(arg_2 - arg_0)) * _wgslsmith_f_op_f32(step(-411f, _wgslsmith_f_op_f32(arg_0 + 142f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(798f * arg_0), -2056f), -744f, u_input.a >= -2147483647i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1062f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2297f * 529f) + _wgslsmith_f_op_f32(step(495f, arg_2))) * _wgslsmith_f_op_f32(select(arg_0, arg_2, true))));
    let var_1 = Struct_1(u_input.b, true, vec4<i32>(23940i, u_input.b, ~u_input.b, abs(u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zz - vec2<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 + arg_2))), var_0.wx), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(min(u_input.b, u_input.a), ~u_input.a, -u_input.b), vec3<i32>(min(11283i, u_input.b), abs(-1i), ~u_input.a), -vec3<i32>(-10816i, u_input.b, 5928i)), countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-9470i, u_input.a, u_input.a), vec3<i32>(10548i, u_input.a, u_input.b)), vec3<i32>(u_input.a, 1i, 2147483647i) >> (arg_3 % vec3<u32>(32u)), vec3<i32>(u_input.a, 22587i, 13623i)))));
    return var_0.x;
}

fn func_2() -> u32 {
    var var_0 = reverseBits(~32507u);
    var var_1 = Struct_1(~(~u_input.b), false, _wgslsmith_mod_vec4_i32(~(~vec4<i32>(22496i, u_input.b, u_input.b, u_input.b)) | ~vec4<i32>(u_input.a, u_input.b, 14459i, -90i), (~vec4<i32>(-63207i, u_input.b, u_input.b, u_input.b) & ~vec4<i32>(-1i, u_input.b, u_input.b, 26197i)) & vec4<i32>(countOneBits(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1706i, -17115i), vec3<i32>(u_input.b, u_input.b, u_input.b)), 2147483647i, -26173i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f * -468f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-928f - -1000f)), select(true, any(vec2<bool>(false, false)), true), _wgslsmith_f_op_f32(f32(-1f) * -517f), func_3(Struct_1(-8749i, false, vec4<i32>(u_input.b, u_input.b, 30587i, u_input.b), vec2<f32>(-2523f, 1631f), -1i), Struct_1(u_input.b, false, vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), vec2<f32>(-103f, 2358f), u_input.a))))), min(0i, 13209i));
    var_1 = Struct_1(var_1.e, all(vec4<bool>(true, !var_1.b, any(select(vec3<bool>(var_1.b, true, true), vec3<bool>(true, true, true), var_1.b)), true)), vec4<i32>((_wgslsmith_dot_vec4_i32(var_1.c, var_1.c) ^ (var_1.e >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 29u)] % 32u))) >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 28677u, global0[_wgslsmith_index_u32(64264u, 29u)]), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(43884u, 29u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 1u))), 29u)] % 32u), firstTrailingBit(_wgslsmith_sub_i32(0i, u_input.b) >> (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12230u, 29u)], 29u)], 29u)], 29u)], 36782u) % 32u)), u_input.b, ~1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.d, var_1.d), _wgslsmith_f_op_vec2_f32(var_1.d - var_1.d)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, var_1.d.x), vec2<f32>(-472f, -561f))))), -34422i);
    global1 = array<vec2<bool>, 5>();
    let var_2 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, false), global1[_wgslsmith_index_u32(4294967295u, 5u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 1u), 5u)], select(vec2<bool>(var_1.b, var_1.b), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 5u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(972u, 29u)], 29u)], 5u)])), true), vec2<bool>(all(select(vec3<bool>(var_1.b, true, var_1.b), vec3<bool>(var_1.b, false, true), false)), var_1.b | true), var_1.b), global1[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_div_i32(-2147483647i, u_input.b), false | (false && var_1.b), _wgslsmith_mult_vec4_i32(~var_1.c, vec4<i32>(0i, -1i, u_input.a, u_input.b) | var_1.c), vec2<f32>(_wgslsmith_f_op_f32(var_1.d.x + var_1.d.x), 1113f), abs(45743i)), Struct_1(_wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, 0i, -1i), var_1.c.xwy), vec3<i32>(-35097i, var_1.e, var_1.c.x)), var_1.b && !var_1.b, vec4<i32>(u_input.a, 6213i, 39082i, -47505i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_1.a, 0i, var_1.c.x), vec4<i32>(u_input.a, -2147483647i, var_1.e, u_input.b)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1106f, var_1.d.x))), -u_input.a)).x, 5u)], -1922f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-var_1.d.x)) * var_1.d.x));
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = arg_1;
    var var_1 = arg_0;
    var_0 = max(vec4<u32>(arg_1.x, select(~arg_1.x, countOneBits(22576u), true), _wgslsmith_clamp_u32(~countOneBits(8223u), 1u, 26192u), var_0.x), _wgslsmith_add_vec4_u32(arg_1, abs(~vec4<u32>(4294967295u, 1u, arg_1.x, 28028u))));
    var var_2 = arg_1 & vec4<u32>(reverseBits(~4294967295u & ~arg_1.x), 1u, _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(arg_1.x, var_0.x, 1u)), var_0.xzw >> (~vec3<u32>(0u, arg_1.x, var_0.x) % vec3<u32>(32u))), func_2());
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-380f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(trunc(var_1.d.x)), !var_1.b, var_1.d.x, var_0.ywx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))));
    return reverseBits(arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(43768i, false, select(func_1(Struct_1(~u_input.a, all(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 5u)]), vec4<i32>(-2147483647i, u_input.b, 0i, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(284f, 521f)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.b, u_input.b, u_input.b))), ~(vec4<u32>(70030u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(157322u, 29u)], 29u)]) << (vec4<u32>(0u, 4294967295u, 4294967295u, 23318u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(~(vec4<i32>(u_input.b, -59620i, -990i, u_input.b) ^ vec4<i32>(-1i, u_input.b, 0i, 2147483647i)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.b, 13001i, u_input.b)), abs(vec4<i32>(1i, 92196i, u_input.a, u_input.a)))), !vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(182f, -421f), vec2<f32>(-809f, 2025f))))), ~(-u_input.b));
    var var_1 = vec4<f32>(1336f, var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_0.d.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1255f)))))));
    var var_2 = _wgslsmith_div_f32(-515f, _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.x)), -191f)) - 493f)));
    var var_3 = Struct_1(u_input.a, true, firstLeadingBit(var_0.c), var_1.wz, u_input.b);
    let var_4 = var_3.c & _wgslsmith_div_vec4_i32(var_0.c, -(~vec4<i32>(-63396i, 53562i, 1i, -63879i)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -2514f));
    var_3 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i & var_3.a, -u_input.a) | _wgslsmith_dot_vec2_i32(var_3.c.yw, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_3.a), vec2<i32>(var_4.x, 2147483647i))), (_wgslsmith_dot_vec4_i32(var_3.c, vec4<i32>(0i, -23748i, 18301i, -39596i)) ^ min(var_3.a, -41941i)) >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9849u, 29u)], 29u)], global0[_wgslsmith_index_u32(64263u, 29u)], 5615u, 1u), vec4<u32>(6096u, 6035u, 5559u, 46480u)) ^ (50602u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)] % 32u)), 29u)] % 32u)), var_0.b, min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a >> (29565u % 32u), ~0i, i32(-1i) * -27377i, func_1(Struct_1(u_input.b, var_0.b, var_4, vec2<f32>(-166f, -2734f), var_3.c.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 489u, global0[_wgslsmith_index_u32(20350u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])).x), vec4<i32>(-var_0.a, var_3.c.x, -u_input.a, -56417i)), vec4<i32>(select(var_4.x, u_input.b, var_0.b), ~2147483647i, i32(-1i) * -23965i, 15528i)), vec2<f32>(1173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_3.d.x)))), -35056i);
    let var_5 = 12864u;
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1249f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_div_f32(-591f, var_0.d.x), var_0.d.x, _wgslsmith_f_op_f32(325f * var_0.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_1.x, var_3.d.x, 1839f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, 1144f, var_1.x, -215f))))));
}

