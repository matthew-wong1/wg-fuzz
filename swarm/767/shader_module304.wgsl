struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec4<bool>) -> bool {
    let var_0 = 1u;
    let var_1 = arg_0.c.c;
    global0 = !vec4<bool>(true, all(!(!vec2<bool>(false, arg_3.x))), any(vec2<bool>(true && arg_3.x, global0.x)), true);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(436f, arg_2.a, -705f, -375f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, -832f, 1000f, arg_0.a), vec4<f32>(-1060f, 451f, arg_2.a, arg_0.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-422f, arg_2.a, 111f, arg_2.a))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a, arg_0.a, 2637f, arg_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_2.a, arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_0.a, -377f, -1841f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1381f, -202f, -425f, 119f))))))));
    return true;
}

fn func_2(arg_0: u32) -> Struct_3 {
    global0 = !vec4<bool>(all(global0.yx), !any(global0.xwz) & false, true, 921f != _wgslsmith_f_op_f32(ceil(-1000f)));
    global0 = select(vec4<bool>(true, false, true, any(!global0.wx)), vec4<bool>(global0.x, false, true, (global0.x && false) && global0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(4308u, 30765u, arg_0) >> (~vec3<u32>(100382u, arg_0, 1u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 1u, countOneBits(0u))) < 13171u);
    global0 = select(vec4<bool>(any(!select(vec4<bool>(true, false, global0.x, true), vec4<bool>(false, true, true, global0.x), global0.x)), global0.x, _wgslsmith_mult_u32(0u, u_input.a.x | 0u) <= arg_0, func_3(Struct_3(-710f, vec4<i32>(2147483647i, 26649i, u_input.b, u_input.b), Struct_1(vec3<i32>(u_input.b, u_input.b, 2165i), -16635i, true, u_input.b)), false & (global0.x == global0.x), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -724f), vec4<i32>(u_input.b, u_input.b, u_input.b, 20093i), Struct_1(vec3<i32>(u_input.b, u_input.b, -2147483647i), 43185i, global0.x, -27368i)), !(!vec4<bool>(true, global0.x, false, global0.x)))), !select(!vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, true, true), global0.x), false);
    let var_0 = max(u_input.b, u_input.b);
    let var_1 = false;
    return Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1725f))), 1490f, arg_0 != arg_0)), vec4<i32>(var_0, var_0, _wgslsmith_sub_i32(-2147483647i, var_0), min(u_input.b, 1i) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -18199i, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b)), -vec3<i32>(u_input.b, var_0, -2147483647i))), Struct_1(min(max(~vec3<i32>(var_0, u_input.b, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, var_0), vec3<i32>(1i, 2147483647i, var_0))), vec3<i32>(reverseBits(-2147483647i), 57799i, -23380i)), var_0, true, reverseBits(1i)));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-153f, _wgslsmith_f_op_f32(trunc(arg_1.a))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(281f, arg_1.a) + vec2<f32>(1059f, 352f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2129f, arg_1.a) + vec2<f32>(-101f, arg_1.a)) + vec2<f32>(arg_1.a, arg_1.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(458f, arg_1.a), vec2<f32>(arg_1.a, arg_1.a)) - vec2<f32>(1f, 1f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-490f, 168f, any(vec4<bool>(global0.x, arg_1.c.c, false, arg_1.c.c)))), _wgslsmith_f_op_f32(trunc(-436f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a, -1020f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 614f) * vec2<f32>(-1638f, var_0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1090f, -1916f) + vec2<f32>(var_0.x, 2740f)))))), arg_1.c.c));
    let var_1 = vec3<u32>(4294967295u, arg_0, ~27571u);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(913f, _wgslsmith_f_op_f32(step(var_0.x, arg_1.a))), vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(max(var_0.x, var_0.x))))))));
    var var_2 = select(~u_input.b > u_input.b, any(vec3<bool>(any(vec4<bool>(false, global0.x, true, global0.x)), arg_1.c.c, true)), global0.x) && false;
    return global0.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_4 {
    global0 = select(select(vec4<bool>(any(vec3<bool>(true, true, arg_0.c)), false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, func_4(~0u, func_2(u_input.a.x)), global0.x, arg_1.x), global0.x), !select(select(select(vec4<bool>(true, false, true, arg_1.x), vec4<bool>(true, arg_1.x, global0.x, true), vec4<bool>(false, true, true, true)), !vec4<bool>(global0.x, true, arg_0.c, true), select(vec4<bool>(false, global0.x, true, arg_1.x), vec4<bool>(true, arg_1.x, false, global0.x), vec4<bool>(arg_1.x, true, arg_1.x, false))), vec4<bool>(global0.x | true, u_input.a.x == 0u, !global0.x, true), arg_1.x), !any(!global0.yzz));
    global0 = !(!select(!select(vec4<bool>(false, global0.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, global0.x, false), vec4<bool>(true, true, true, global0.x)), !(!vec4<bool>(arg_0.c, arg_0.c, true, false)), !all(vec4<bool>(arg_0.c, arg_1.x, false, true))));
    global0 = vec4<bool>(global0.x, true, true, (!arg_0.c || false) | (any(select(global0.zx, vec2<bool>(false, false), vec2<bool>(global0.x, false))) == true));
    return Struct_4(vec2<bool>(!arg_1.x, false), countOneBits(_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, u_input.a.x)) < u_input.a.x, Struct_1(-vec3<i32>(~(-15644i), -14283i | u_input.b, firstLeadingBit(arg_0.b)), 12779i, !(!global0.x), -23061i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b, -36457i, 1i), select(-vec3<i32>(17775i, u_input.b, -2147483647i), ~vec3<i32>(1i, u_input.b, u_input.b), global0.x)), reverseBits(-_wgslsmith_add_i32(-30719i, u_input.b)), true, ~(~(~0i))), !global0.yz);
    var var_1 = vec4<i32>(~(~(~u_input.b)), (u_input.b ^ _wgslsmith_mult_i32(reverseBits(var_0.c.a.x), abs(u_input.b))) >> (u_input.a.x % 32u), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(~(i32(-1i) * -35314i), ~(-6330i), -23116i, -4498i), abs(min(-vec4<i32>(-6285i, 2147483647i, 0i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -31252i, var_0.c.d, u_input.b), vec4<i32>(0i, 0i, var_0.c.a.x, u_input.b))))));
    let var_2 = var_0.c;
    let var_3 = Struct_1(var_0.c.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~max(2147483647i, var_0.c.a.x), var_0.c.d), var_0.c.b), global0.x, u_input.b);
    global0 = select(vec4<bool>(false, true, global0.x, true), !select(vec4<bool>(true, func_3(Struct_3(1773f, vec4<i32>(1i, var_1.x, var_1.x, var_3.d), var_0.c), var_3.c, Struct_3(1172f, vec4<i32>(var_1.x, -2147483647i, u_input.b, var_3.d), var_0.c), vec4<bool>(var_3.c, true, true, var_2.c)), true, !var_3.c), select(!vec4<bool>(global0.x, var_3.c, var_0.a.x, var_2.c), select(vec4<bool>(var_2.c, true, true, var_0.c.c), vec4<bool>(true, var_0.a.x, global0.x, true), var_2.c), !vec4<bool>(false, var_2.c, false, var_0.c.c)), !select(vec4<bool>(true, false, var_3.c, true), vec4<bool>(var_0.b, global0.x, global0.x, true), false)), !var_0.a.x);
    let var_4 = 4294967295u;
    let var_5 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1492f, -361f, 853f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(614f, -531f, -249f) + vec3<f32>(-1000f, -531f, -1332f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(336f, -1000f, -1363f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, 1000f, -1000f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_4).b.zy);
}

