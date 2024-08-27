struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: i32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(50933u, 48154u, 43752u, 0u, 50290u, 86684u, 4294967295u, 0u, 97434u, 4294967295u, 0u, 60135u, 14526u, 52978u, 0u, 39893u);

var<private> global1: array<f32, 24>;

var<private> global2: array<f32, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(trunc(-1165f))))), ~14085u, -abs(_wgslsmith_div_i32(-u_input.b, 1i)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -425f) + vec2<f32>(global2[_wgslsmith_index_u32(0u, 8u)], arg_0.a)))) - vec2<f32>(_wgslsmith_f_op_f32(step(-205f, 261f)), global1[_wgslsmith_index_u32(u_input.a, 24u)])), arg_0, Struct_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(40550u, 16u)], u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~50512u ^ (79767u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6826u, 16u)], 16u)], 16u)], 16u)] % 32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1896f, global2[_wgslsmith_index_u32(6730u, 8u)], -614f))))), vec3<bool>(true, u_input.b < u_input.b, true))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(9473u, 24u)], arg_0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(72780u, 8u)], -622f), vec2<f32>(-759f, 670f), vec2<bool>(false, true))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f * global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 8u)])), global1[_wgslsmith_index_u32(~u_input.a, 24u)]), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 11561u, 40302u), vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], global0[_wgslsmith_index_u32(1u, 16u)])), vec3<u32>(4294967295u, 54715u, 0u) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], 13073u, 65205u) % vec3<u32>(32u))), 23559u, vec3<f32>(_wgslsmith_div_f32(1108f, global1[_wgslsmith_index_u32(u_input.a, 24u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 16u)], 24u)], -139f)), vec3<bool>(true, true, true))));
    global1 = array<f32, 24>();
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b, 24u)]), -816f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.a) * vec2<f32>(863f, global2[_wgslsmith_index_u32(var_1.d.c.b, 8u)]))) + _wgslsmith_f_op_vec2_f32(exp2(var_1.e.c.c.yy)))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(max(var_1.b, 1u), 8u)]))))))));
    return _wgslsmith_f_op_f32(var_1.e.a.x - global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(var_0.b, 16u)]), vec3<u32>(29173u, 0u, var_0.e.c.a.x)), (var_1.e.c.a | var_1.e.c.a) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, var_0.d.c.a.x, u_input.a), vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 16u)], 50219u))), global0[_wgslsmith_index_u32(max(reverseBits(firstLeadingBit(0u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(48916u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 0u, u_input.a, var_0.b))), 16u)]), 24u)]);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1569f))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, 41814u) & vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0, 16u)]), select(vec2<u32>(0u, 37755u), vec2<u32>(arg_0, 1u), false), true), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(arg_0, 16u)], 17231u), ~vec2<u32>(arg_0, 0u))), 24u)]), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-424f, global2[_wgslsmith_index_u32(u_input.a, 8u)]) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(114f, global1[_wgslsmith_index_u32(u_input.a, 24u)]), vec2<f32>(global2[_wgslsmith_index_u32(arg_0, 8u)], global1[_wgslsmith_index_u32(1u, 24u)]), true)))), vec2<f32>(global2[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(1677f, global1[_wgslsmith_index_u32(24193u, 24u)]))))))));
    var var_1 = ~38031i >> (_wgslsmith_mod_u32((global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a, 16u)], arg_0), 16u)] & 17037u) ^ reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(arg_0, 0u))), 1u) % 32u);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1502f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(69250u, 8u)]) * -1010f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 8u)], global1[_wgslsmith_index_u32(16735u, 24u)])))))), Struct_2(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), Struct_1(vec3<u32>(u_input.a, min(_wgslsmith_sub_u32(2457u, u_input.a), _wgslsmith_add_u32(arg_0, 4294967295u)), u_input.a), u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2224f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 8u)] - global2[_wgslsmith_index_u32(31520u, 8u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0, 24u)], global1[_wgslsmith_index_u32(arg_0, 24u)]))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_1 = u_input.b;
    let var_3 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(24868i, u_input.b, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-(i32(-1i) * -1i), ~_wgslsmith_mod_i32(u_input.b, 0i), u_input.b), ~vec3<i32>(25849i >> (0u % 32u), 1i, 1i)));
    return _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(-386f * var_2.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1111f - -1448f) + var_2.c.c.x)))));
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 16u)], 24u)], _wgslsmith_f_op_f32(-164f - -308f), true)), -430f)))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90504u, 16u)], 8u)] + -510f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1600f) * _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63990u, 16u)], 8u)]))), !(arg_0.b != var_0))) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a << (46122u % 32u), 24u)])), countOneBits(~max(1u, 19535u)), u_input.b << (_wgslsmith_add_u32(~1u, ~(~global0[_wgslsmith_index_u32(u_input.a, 16u)])) % 32u), Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-844f + 344f), _wgslsmith_f_op_f32(1471f * 586f)))), Struct_2(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0)))), Struct_1(reverseBits(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 0u, u_input.a)), ~reverseBits(u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 615f, 1454f))), vec3<bool>(false, true, false))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1406f - arg_0.b), _wgslsmith_f_op_f32(var_0 + global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 16u)], 8u)]))), arg_0, Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], 0u, u_input.a), select(vec3<u32>(49179u, 68031u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a), vec3<bool>(true, true, true))), 95732u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1000f, -911f) * vec3<f32>(1622f, 1163f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18120u, 16u)], 16u)], 8u)]))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(443f, -209f, arg_0.a, -1000f) + vec4<f32>(326f, -1000f, var_0, global2[_wgslsmith_index_u32(u_input.a, 8u)])), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -493f, -265f, global1[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 8u)], var_0, 199f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 8u)], var_2.d.a.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(u_input.a), 8u)]))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(436f, var_0, 135f, global2[_wgslsmith_index_u32(15812u, 8u)]))))) - vec4<f32>(1388f, global1[_wgslsmith_index_u32(var_2.e.c.b, 24u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(107057u, 8u)]), arg_0.b)))));
    let var_4 = _wgslsmith_mult_i32(-u_input.b, u_input.b);
    return -min(-_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.c, var_4), vec2<i32>(var_4, var_4)), countOneBits(vec2<i32>(0i, var_2.c))), -_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(var_2.c, var_2.c)), vec2<i32>(var_4, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_4), vec2<i32>(-24278i, var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.b, u_input.b) ^ func_1(Struct_2(-1000f, -608f)), vec2<i32>(_wgslsmith_clamp_i32(firstTrailingBit(1i), 1i, u_input.b), u_input.b)), ~abs(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)) & ~vec2<i32>(-1i, u_input.b)));
    global2 = array<f32, 8>();
    var var_1 = vec2<bool>(true, false && ((~global0[_wgslsmith_index_u32(u_input.a, 16u)] & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(909u, 16u)]), vec2<u32>(111971u, global0[_wgslsmith_index_u32(u_input.a, 16u)]))) == 1u));
    global2 = array<f32, 8>();
    var var_2 = select(vec4<bool>(_wgslsmith_add_i32(-45074i, _wgslsmith_mult_i32(-1i, 2092i)) != u_input.b, var_1.x, true | var_1.x, var_0.x < _wgslsmith_dot_vec3_i32(-vec3<i32>(33613i, u_input.b, u_input.b), abs(vec3<i32>(var_0.x, 49872i, 0i)))), select(!(!select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, false, false, true), true)), select(select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(true, true, var_1.x, var_1.x)), !vec4<bool>(var_1.x, var_1.x, true, true), !vec4<bool>(false, true, false, var_1.x)), vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, false), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), !var_1.x)), global0[_wgslsmith_index_u32(u_input.a, 16u)] >= abs(1u)), all(select(vec3<bool>(var_1.x, 12435u != global0[_wgslsmith_index_u32(39966u, 16u)], all(vec2<bool>(var_1.x, var_1.x))), !(!vec3<bool>(false, true, var_1.x)), true)));
    global1 = array<f32, 24>();
    global0 = array<u32, 16>();
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2138f, global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5339u, 16u)], 8u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 16u)], 24u)]))))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2761f), global1[_wgslsmith_index_u32(u_input.a, 24u)], _wgslsmith_f_op_f32(min(-759f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 16u)]), 24u)], _wgslsmith_f_op_f32(sign(-1032f)))))), 743f), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, max(var_0.x, var_0.x) & -2147483647i, -1i), _wgslsmith_mult_vec3_i32(~max(vec3<i32>(u_input.b, u_input.b, var_0.x), vec3<i32>(-15162i, var_0.x, var_0.x)), vec3<i32>(1i, u_input.b, 1i))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(1296u, 16u)], u_input.a, 38922u, 83476u) << (vec4<u32>(global0[_wgslsmith_index_u32(7754u, 16u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58171u, 16u)], 16u)], u_input.a) % vec4<u32>(32u)), abs(~vec4<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], u_input.a))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], 4294967295u, u_input.a, u_input.a)), ~abs(vec4<u32>(global0[_wgslsmith_index_u32(67054u, 16u)], 50156u, 0u, 113456u)))));
}

