struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, true, true, true, true, false, true, true, false, true, false, false, true);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2652f, -847f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1982f, -1304f)))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2045f), 1201f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1204f, 822f), vec2<f32>(496f, -2572f))))))));
    global0 = array<bool, 15>();
    var var_1 = Struct_2(u_input.c, var_0, _wgslsmith_clamp_vec4_i32(-u_input.c, firstLeadingBit(u_input.c >> (vec4<u32>(4294967295u, 4294967295u, 31029u, 17900u) % vec4<u32>(32u))), max(vec4<i32>(1i, u_input.b, -1i, _wgslsmith_mult_i32(1i, u_input.b)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(1i, u_input.b, 2586i, 2147483647i), vec4<i32>(u_input.b, -2147483647i, -92803i, 8603i)), -vec4<i32>(-1i, u_input.b, 21189i, -30344i)))));
    var_1 = Struct_2(vec4<i32>(0i, abs(1i), u_input.b, var_1.a.x << (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(17047u, u_input.a, arg_0)), reverseBits(vec3<u32>(arg_1, 50164u, 79921u))) % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a))))), vec4<i32>(-5352i, 2147483647i, 2147483647i, 21734i));
    let var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_0, u_input.a, arg_0), vec4<u32>(46302u, 24324u, arg_0, arg_0)), vec4<u32>(0u, 70050u, u_input.a, u_input.a), ~vec4<u32>(arg_1, u_input.a, 1u, arg_0)), ~(vec4<u32>(71527u, arg_0, 0u, 0u) >> (vec4<u32>(arg_0, 0u, 4294967295u, 9269u) % vec4<u32>(32u)))) << (65216u % 32u);
    return select(u_input.c.wwz, vec3<i32>(-2147483647i, ~(-15761i), i32(-1i) * -firstLeadingBit(-55854i)), any(vec4<bool>(!any(vec4<bool>(true, global0[_wgslsmith_index_u32(28239u, 15u)], true, true)), 0u < _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 87162u, 86877u), vec3<u32>(u_input.a, 0u, 57936u)), all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0, 15u)]))), true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    return arg_0.x;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1000f - 166f), _wgslsmith_f_op_f32(f32(-1f) * -609f)));
    var var_1 = u_input.a & u_input.a;
    var var_2 = vec3<i32>(func_4(-max(func_3(u_input.a, 42307u), vec3<i32>(u_input.b, u_input.c.x, -2147483647i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), select(select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), true), !vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x)), vec2<bool>(true, all(vec4<bool>(true, arg_0, arg_0, true))), !(!vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.a.x)))) - var_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1338f, var_0.a.x, var_0.a.x, var_0.a.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, 215f, -1202f, var_0.a.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-308f, 445f, var_0.a.x, var_0.a.x))))))), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(firstLeadingBit(-1i), _wgslsmith_mod_i32(-50096i, _wgslsmith_dot_vec4_i32(vec4<i32>(-15970i, -1i, 1i, u_input.b), vec4<i32>(u_input.c.x, 34898i, u_input.b, -2147483647i))))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zx, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, u_input.b), vec2<i32>(u_input.b, u_input.c.x)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-46669i, u_input.c.x)))), -u_input.c.wy));
    var_1 = 43109u;
    let var_3 = Struct_2(vec4<i32>(1i, -(~(~var_2.x)), 0i, 1i << (1u % 32u)), var_0, ~vec4<i32>(~(u_input.b | u_input.c.x), func_4(~u_input.c.wyx, vec2<bool>(true, true), 148f, _wgslsmith_f_op_vec4_f32(vec4<f32>(991f, -725f, -794f, var_0.a.x) - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1145f))), _wgslsmith_mult_i32(-7111i, u_input.c.x), 0i));
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) | ~vec2<u32>(u_input.a, 4294967295u), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 59855u), vec2<u32>(u_input.a, u_input.a)))) | u_input.a;
}

fn func_1() -> vec3<f32> {
    var var_0 = vec3<bool>(true, global0[_wgslsmith_index_u32(abs(~(~_wgslsmith_mod_u32(u_input.a, u_input.a))), 15u)], !(!any(vec2<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.a, 15u)])) & select(global0[_wgslsmith_index_u32(0u, 15u)], u_input.b >= u_input.b, global0[_wgslsmith_index_u32(func_2(true), 15u)])));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-187f, -938f)))), vec4<i32>(u_input.b, u_input.c.x, select(19864i, u_input.b, !(u_input.c.x <= -33774i)), reverseBits(_wgslsmith_add_i32(~u_input.b, 1i))));
    let var_2 = ~select(~(~(1u >> (u_input.a % 32u))), 1u, false);
    let var_3 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-630f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.a.x), var_1.b.a.x))))));
    let var_4 = var_1;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_3 + var_4.b.a.x), var_3, _wgslsmith_f_op_f32(f32(-1f) * -624f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.a.x, var_1.b.a.x, var_4.b.a.x))), !all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false, true, false)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(799f + var_1.b.a.x), var_3), var_4.b.a.x, _wgslsmith_f_op_f32(-var_1.b.a.x)), var_0.x)), vec3<f32>(var_1.b.a.x, var_3, -1542f));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = countOneBits(-5410i);
    var_0 = _wgslsmith_mult_i32(abs(firstLeadingBit(u_input.c.x)), abs(~abs(u_input.c.x) >> (4294967295u % 32u)));
    var_0 = firstLeadingBit(1i);
    let var_1 = _wgslsmith_dot_vec3_u32(~(select(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(4294967295u, u_input.a, 0u), global0[_wgslsmith_index_u32(u_input.a, 15u)]) << ((vec3<u32>(arg_0, 24655u, 16841u) << (vec3<u32>(21691u, u_input.a, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ max(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 35110u), vec3<u32>(0u, 4294967295u, u_input.a)), ~(vec3<u32>(1u, 83842u, 50006u) ^ vec3<u32>(u_input.a, arg_0, arg_0))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(42581u, arg_0, 19207u), global0[_wgslsmith_index_u32(u_input.a, 15u)]), ~vec3<u32>(4294967295u, 59803u, 60820u)), _wgslsmith_mod_vec3_u32(vec3<u32>(33857u, 1u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0, 1u), vec3<u32>(1u, u_input.a, arg_0)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.x, arg_1.x)))) * arg_1.xy)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.xz));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = func_5(u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(arg_1.a.x)), arg_2)), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global1.x, global1.x)))));
    let var_1 = -1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_5(~u_input.a, vec3<f32>(_wgslsmith_f_op_f32(1000f - arg_1.a.x), -1305f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))).a.x, _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-308f, arg_2) - -855f), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(273f + -2521f), true))));
    let var_3 = arg_0.xz;
    let var_4 = func_5(_wgslsmith_div_u32(u_input.a, 20088u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(182f, 769f, arg_1.a.x)))))));
    return Struct_2(select(_wgslsmith_add_vec4_i32(u_input.c, ~reverseBits(vec4<i32>(-7635i, var_3.x, 1i, var_3.x))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, arg_0.x, u_input.b, 2147483647i), firstLeadingBit(abs(u_input.c)), u_input.c), false), var_0, _wgslsmith_mult_vec4_i32(min(vec4<i32>(var_1 << (11259u % 32u), -var_1, reverseBits(arg_0.x), -1i), ~u_input.c), _wgslsmith_mod_vec4_i32(u_input.c, min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, var_3.x, 30579i, var_3.x), vec4<i32>(0i, 6176i, 0i, arg_0.x)), _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(var_1, u_input.b, -32747i, arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(-vec3<i32>(-(~u_input.b), ~countOneBits(u_input.c.x), -u_input.b), func_5(reverseBits(~4294967295u), _wgslsmith_f_op_vec3_f32(func_1())), func_5(1u, vec3<f32>(_wgslsmith_f_op_f32(-635f - _wgslsmith_f_op_f32(-1000f * -2010f)), -161f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1602f, -659f, global1.x)))))).a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-371f)))));
    global0 = array<bool, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.b.a.x, -1772f, var_0.b.a.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1747f, -1034f, var_0.b.a.x), vec4<f32>(var_0.b.a.x, 1317f, 463f, 1565f), global0[_wgslsmith_index_u32(4294967295u, 15u)])))))) + vec4<f32>(_wgslsmith_f_op_f32(min(1316f, _wgslsmith_f_op_f32(-var_0.b.a.x))), var_0.b.a.x, _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.b.a.x)), _wgslsmith_f_op_f32(-805f + -165f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.b.a.x, var_0.b.a.x)), var_0.b.a.x))), func_5(11515u, vec3<f32>(_wgslsmith_div_f32(var_0.b.a.x, 2228f), _wgslsmith_f_op_f32(var_0.b.a.x + var_0.b.a.x), _wgslsmith_f_op_f32(max(var_0.b.a.x, var_0.b.a.x)))).a.x, _wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1530f), _wgslsmith_div_f32(260f, _wgslsmith_f_op_f32(floor(1890f))), false))));
    let var_2 = vec3<bool>(all(select(!vec3<bool>(global0[_wgslsmith_index_u32(48320u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], false), !vec3<bool>(global1.x, true, true), global1.x)) && false, all(!select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(global1.x, false), vec2<bool>(true, false)), select(vec2<bool>(true, global0[_wgslsmith_index_u32(90228u, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false), vec2<bool>(global0[_wgslsmith_index_u32(21543u, 15u)], true)), vec2<bool>(true, true))), false);
    global1 = vec2<bool>(false, !any(vec4<bool>(true, true, global1.x, any(var_2.yx))));
    var var_3 = u_input.a | ~min(u_input.a, u_input.a);
    global0 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, 1u)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(var_2.x, global1.x)))));
}

