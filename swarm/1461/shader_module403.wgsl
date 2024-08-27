struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: u32) -> i32 {
    global0 = array<bool, 24>();
    var var_0 = arg_0;
    var var_1 = ~abs(arg_3) >= _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b | u_input.b), arg_3), ~firstLeadingBit(~54644u));
    var_1 = arg_2.x & true;
    var_1 = true | !(!(!arg_2.x));
    return min(firstTrailingBit(u_input.c.x << (~0u % 32u)), firstLeadingBit(-2147483647i));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = arg_3.d.x;
    var var_1 = countOneBits(abs(-(~(vec4<i32>(u_input.c.x, 4309i, 9884i, 2147483647i) & vec4<i32>(u_input.c.x, 2147483647i, 41466i, u_input.c.x)))));
    let var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(1i, var_1.x), _wgslsmith_mult_i32(u_input.c.x, 1i), -11914i) >> ((~vec3<u32>(u_input.b.x, arg_2.c, arg_3.c) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_2.c, arg_2.c), vec3<u32>(927u, 62155u, 0u))) % vec3<u32>(32u)), -(~vec3<i32>(var_1.x, u_input.c.x, 1i))), vec3<i32>(abs(func_3(arg_3, Struct_3(vec2<bool>(true, arg_0), -515f, vec4<f32>(-498f, arg_3.d.x, arg_3.d.x, -778f)), vec2<bool>(arg_2.b, false), ~66953u)), 1i ^ _wgslsmith_sub_i32(~var_1.x, u_input.c.x), _wgslsmith_div_i32(var_1.x, min(u_input.c.x, -2147483647i))));
    var var_3 = Struct_2(any(select(vec2<bool>(true, true), !vec2<bool>(arg_3.a, arg_2.a), vec2<bool>(false, !arg_3.b))), true, _wgslsmith_add_u32(4294967295u, ~abs(arg_3.c)) ^ (0u ^ _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_3.c, 1u), arg_2.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_3.d, vec2<f32>(arg_2.d.x, arg_2.d.x)), _wgslsmith_f_op_vec2_f32(arg_3.d - vec2<f32>(arg_3.d.x, arg_3.d.x)))) + arg_2.d) - arg_3.d));
    let var_4 = var_2;
    return !select(select(select(vec2<bool>(true, arg_0), vec2<bool>(false, false), true), select(!vec2<bool>(arg_3.b, arg_0), vec2<bool>(true, true), vec2<bool>(arg_1, global0[_wgslsmith_index_u32(arg_3.c, 24u)])), vec2<bool>(select(true, false, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30697u, 81688u, u_input.b.x, var_3.c), vec4<u32>(1u, 2023u, 58094u, arg_3.c)), 24u)])), vec2<bool>(!(48027u >= u_input.a), arg_0), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 24u)], true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], arg_2.b)), vec2<bool>(true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(21801u, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 7862u), u_input.a)), ~u_input.b.x));
    var var_2 = var_0.b.x;
    var var_3 = -4410i;
    var_2 = -u_input.c.x;
    return Struct_2(!(func_3(Struct_2(true, false, 91301u, vec2<f32>(300f, var_0.d)), Struct_3(vec2<bool>(true, false), 549f, vec4<f32>(717f, arg_0.d, var_0.d, arg_0.d)), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1, 24u)]), _wgslsmith_clamp_u32(4294967295u, 33743u, var_1)) == ~u_input.c.x), true, firstLeadingBit(var_1), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(330f + arg_2.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1315f))))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = func_4(Struct_1(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)]), !vec2<bool>(false, arg_0.b), func_2(arg_0.a, arg_0.b, Struct_2(true, false, u_input.b.x, arg_0.d), arg_0)), vec2<bool>(arg_0.b, false), true), u_input.c.yxw, abs(~u_input.c), _wgslsmith_f_op_f32(abs(1508f))), !vec4<bool>((arg_0.c << (1u % 32u)) >= ~arg_0.c, _wgslsmith_f_op_f32(step(-1248f, 1213f)) != -322f, all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c, 24u)], global0[_wgslsmith_index_u32(arg_0.c, 24u)], arg_0.a, true)), global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(~arg_0.c | select(0u, arg_0.c, false), 24u)], u_input.b.x <= firstTrailingBit(73966u)), _wgslsmith_f_op_f32(sign(-768f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-904f, arg_1.x, arg_1.x, arg_1.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -616f), -1257f, 689f, _wgslsmith_f_op_f32(floor(-171f))))), vec2<bool>(arg_0.b, false));
    let var_1 = !select(select(!(!vec4<bool>(var_0.a, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0.b, arg_0.b)), vec4<bool>(true, all(vec2<bool>(true, var_0.b)), all(vec2<bool>(false, false)), var_0.a), u_input.c.x <= _wgslsmith_div_i32(u_input.c.x, 0i)), vec4<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_0.a, global0[_wgslsmith_index_u32(37429u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]))), false, select(arg_0.d.x < 1484f, func_2(arg_0.a, arg_0.b, arg_0, arg_0).x, all(vec3<bool>(true, var_0.b, arg_0.b)))), !vec4<bool>(any(vec3<bool>(false, false, var_0.a)), true, select(true, arg_0.a, var_0.a), func_2(true, false, arg_0, arg_0).x));
    var_0 = Struct_2(!global0[_wgslsmith_index_u32(func_4(Struct_1(var_1.xw, _wgslsmith_add_vec3_i32(vec3<i32>(-27530i, 0i, u_input.c.x), u_input.c.yxy), u_input.c, _wgslsmith_f_op_f32(ceil(arg_1.x))), vec4<bool>(func_4(Struct_1(vec2<bool>(var_0.b, false), u_input.c.wyz, u_input.c, var_0.d.x), vec4<bool>(true, true, true, false), Struct_3(var_1.yw, -530f, vec4<f32>(arg_1.x, 1000f, var_0.d.x, arg_1.x)), var_1.zx).b, 425f == var_0.d.x, var_1.x, arg_0.b), Struct_3(select(var_1.wy, vec2<bool>(arg_0.a, true), vec2<bool>(false, false)), arg_0.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_0.d.x, -1000f, arg_0.d.x))), vec2<bool>(false, false)).c, 24u)], any(vec3<bool>(var_1.x, select(any(var_1.wyx), true, !arg_0.a), !var_1.x)), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, var_0.d.x)) + arg_1))));
    var var_2 = !vec2<bool>(any(var_1.zyx), true);
    var_2 = vec2<bool>(var_1.x, var_1.x);
    return Struct_1(select(vec2<bool>(arg_0.a, false), var_1.xw, false), select(_wgslsmith_sub_vec3_i32(abs(u_input.c.yxx << (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u))), u_input.c.wxw), u_input.c.wxw, true), u_input.c, _wgslsmith_f_op_f32(arg_1.x + func_4(Struct_1(select(var_1.yy, var_1.xx, vec2<bool>(var_0.b, global0[_wgslsmith_index_u32(0u, 24u)])), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), firstLeadingBit(vec4<i32>(u_input.c.x, 0i, 2147483647i, u_input.c.x)), var_0.d.x), select(var_1, var_1, any(vec4<bool>(false, false, false, var_1.x))), Struct_3(!vec2<bool>(var_2.x, true), -350f, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1240f) * vec4<f32>(677f, 1000f, arg_0.d.x, -1386f))), select(var_1.zy, var_1.yx, vec2<bool>(false, var_2.x))).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 27813i, -1i), ~u_input.c.wwx), -1i | -u_input.c.x), u_input.c.x), u_input.c.x);
    let var_1 = all(vec2<bool>(reverseBits(u_input.c.x) > (_wgslsmith_clamp_i32(-31014i, var_0.x, var_0.x) >> (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)), global0[_wgslsmith_index_u32(firstLeadingBit(73607u), 24u)]));
    global0 = array<bool, 24>();
    let var_2 = !(!(!(!all(vec2<bool>(true, var_1)))));
    let var_3 = 4294967295u;
    let var_4 = func_1(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3, ~49230u), 24u)] && var_1, any(select(vec3<bool>(var_2, true, global0[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(var_2, true, global0[_wgslsmith_index_u32(1u, 24u)]), false)) | (global0[_wgslsmith_index_u32(var_3, 24u)] && true), min(~1u, _wgslsmith_add_u32(var_3, firstTrailingBit(var_3))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1171f * -1051f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) * 1283f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1876f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(199f, -453f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, 378f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(318f, -369f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(step(-669f, 886f))), -205f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(abs(vec3<u32>(u_input.b.x, 60655u, 38824u)), vec3<u32>(4294967295u, u_input.a, var_3) ^ vec3<u32>(var_3, var_3, 22045u)) >> (~select(vec3<u32>(4294967295u, 0u, var_3), vec3<u32>(u_input.b.x, var_3, u_input.a), false) % vec3<u32>(32u))));
}

