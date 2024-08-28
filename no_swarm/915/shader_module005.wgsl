struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(i32(-2147483648), i32(-2147483648), -1i, i32(-2147483648), -43131i, -47194i, -1i, 58689i, 1i, 48951i, 1i, i32(-2147483648), -18930i, 35253i, 1i, 2147483647i, 2147483647i, -89i, 0i, 5334i, 2147483647i, 22292i, 2147483647i, 29829i, i32(-2147483648), i32(-2147483648), -1i, 0i, i32(-2147483648), 0i, -1i);

var<private> global1: bool = true;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    global0 = array<i32, 31>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1182f - _wgslsmith_div_f32(321f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2457f * 1276f))), 993f) - 735f), vec2<i32>(-_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, global0[_wgslsmith_index_u32(13026u, 31u)])), vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), abs(41214i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global0 = array<i32, 31>();
    global1 = select((_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], u_input.b, -16372i) | -2147483647i) > var_0.c.x, any(vec3<bool>(any(arg_0), false, true)), arg_0.x) == any(vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, arg_0.x, false), false)), all(!vec3<bool>(true, arg_0.x, true)), arg_0.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(ceil(var_0.a)))) - var_0.d), -1715f, -353f));
    return -(_wgslsmith_mult_i32(select(abs(global0[_wgslsmith_index_u32(40829u, 31u)]), 0i, true), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, 50111i), var_0.c))) & reverseBits(global0[_wgslsmith_index_u32(~(45834u << (0u % 32u)), 31u)]));
}

fn func_2() -> Struct_2 {
    let var_0 = ~u_input.a.x;
    var var_1 = vec4<bool>(false, 16520i < -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-68323i, u_input.b, -22567i), vec3<i32>(-23168i, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], -2147483647i)), func_3(vec2<bool>(false, false))), (_wgslsmith_f_op_f32(max(1612f, _wgslsmith_f_op_f32(f32(-1f) * -329f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -1351f)))) & true, true);
    var_1 = select(select(!(!select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(var_1.x, var_1.x, false, true), false)), !vec4<bool>(var_1.x, var_1.x, true, false), !vec4<bool>(all(vec2<bool>(false, var_1.x)), u_input.a.x == 1u, any(var_1.yx), true)), !select(select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), false), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, true, false), true), vec4<bool>(var_1.x, true, true, true)), vec4<bool>(any(vec2<bool>(var_1.x, any(var_1.zx))), var_1.x, var_1.x, false));
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(330f - -233f), _wgslsmith_f_op_f32(1098f - 1688f), _wgslsmith_div_f32(-1894f, 275f), 1855f), vec4<f32>(_wgslsmith_f_op_f32(trunc(1837f)), _wgslsmith_f_op_f32(f32(-1f) * -554f), 1f, _wgslsmith_f_op_f32(max(530f, 910f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 375f, -1854f, 1000f) + vec4<f32>(526f, 304f, -281f, -350f)) * vec4<f32>(-2124f, 1667f, _wgslsmith_f_op_f32(sign(-305f)), _wgslsmith_f_op_f32(ceil(723f))))), u_input.a.zy | (firstLeadingBit(~vec2<u32>(0u, var_0)) << (_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x)), reverseBits(vec2<u32>(u_input.a.x, var_0))) % vec2<u32>(32u))), -9417i, _wgslsmith_clamp_vec2_i32(~firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0, 31u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], 37545i))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], -7351i), vec2<i32>(global0[_wgslsmith_index_u32(5289u, 31u)], u_input.b), true), -vec2<i32>(-2147483647i, 1826i), vec2<i32>(u_input.b, 2147483647i)), vec2<i32>(u_input.b, abs(global0[_wgslsmith_index_u32(var_0, 31u)])), vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], 4619i) & _wgslsmith_mod_vec2_i32(vec2<i32>(-3429i, u_input.b), vec2<i32>(-1i, global0[_wgslsmith_index_u32(1u, 31u)]))), vec2<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(var_0, 31u)]), abs(global0[_wgslsmith_index_u32(28713u, 31u)])) ^ vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], u_input.b)), ~vec4<i32>(-2147483647i, -1i >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), _wgslsmith_sub_i32(-u_input.b, _wgslsmith_mod_i32(-39047i, -7807i)), ~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], 7117i)));
    global1 = !(!var_1.x);
    return Struct_2(vec4<f32>(757f, _wgslsmith_f_op_f32(287f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.a.x, -944f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, 726f))), _wgslsmith_f_op_f32(ceil(-992f))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zxy, u_input.a.yxw), 87108u >> (u_input.a.x % 32u)), vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 72019u), ~1u), ~var_2.b ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 0u), var_2.b)), ~vec2<u32>(countOneBits(72912u), 0u)), _wgslsmith_div_i32(min(1i, min(~u_input.b, -u_input.b)), -1i), var_2.d, ~(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(24122u, 31u)], 8243i, 18700i)), ~vec4<i32>(var_2.e.x, 2147483647i, var_2.c, global0[_wgslsmith_index_u32(var_2.b.x, 31u)])) | _wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, var_2.e.x, -39589i, global0[_wgslsmith_index_u32(var_2.b.x, 31u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], var_2.d.x, u_input.b, var_2.d.x), vec4<i32>(var_2.e.x, 2147483647i, var_2.c, var_2.e.x)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, ~firstLeadingBit(6720u)), _wgslsmith_div_vec2_u32(func_2().b, ~(~vec2<u32>(85935u, 4294967295u))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f)), _wgslsmith_f_op_f32(arg_0.x - arg_2.d), ~arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-832f - _wgslsmith_f_op_f32(abs(880f))) + _wgslsmith_f_op_f32(trunc(arg_2.b)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1080f, 1096f, -770f, var_0.a.x) + var_0.a), vec4<f32>(arg_2.a, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_mult_vec2_u32(var_1, ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 17653u), var_1)), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, 0u) & 1u, 31u)], -_wgslsmith_sub_i32(var_0.c, 1i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(14874u, 31u)], arg_2.c.x), vec2<i32>(u_input.b, arg_2.c.x) >> (vec2<u32>(16612u, var_1.x) % vec2<u32>(32u))), countOneBits(~_wgslsmith_mult_vec4_i32(var_0.e, vec4<i32>(arg_3.x, -14454i, 0i, arg_3.x)))), var_0, arg_2, -840f);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, 738f, _wgslsmith_f_op_f32(-var_2.d.a))) * var_2.c.a.xxz), vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), -1238f, -1042f)));
    let var_4 = func_2();
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a))), _wgslsmith_f_op_f32(floor(func_2().a.x)), arg_2.c | countOneBits(arg_3), 1435f), func_2(), var_4, Struct_1(-721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_div_f32(-194f, arg_0.x), true))), _wgslsmith_sub_vec2_i32(vec2<i32>(-40000i, 2147483647i), abs(~vec2<i32>(37987i, var_0.e.x))), var_3.x), 1f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - -233f))));
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.b.a.yyx))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1434f, -476f), arg_1.a.zzy, false)))))), firstLeadingBit(vec2<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, 82682u), 0u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2131f, -1255f) - arg_1.a.x)), _wgslsmith_f_op_f32(ceil(func_1(vec3<f32>(arg_1.a.x, 451f, -2702f), ~vec2<u32>(u_input.a.x, 0u), func_1(vec3<f32>(arg_1.a.x, 101f, arg_0.d.a), vec2<u32>(arg_0.b.b.x, 32775u), arg_0.a, arg_0.c.d).a, ~arg_0.b.d).c.a.x)), arg_1.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(341f - 406f)))))), _wgslsmith_mult_vec2_i32(-arg_0.b.d, vec2<i32>(~max(global0[_wgslsmith_index_u32(arg_1.b.x, 31u)], 0i), -6090i))).d;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c.a.xw - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.a.zy))));
    let var_3 = vec4<bool>(select(false, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a.x, 30864u), 31u)] <= _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_0.b.e.yzz, arg_0.c.e.wyz), firstTrailingBit(arg_0.a.c.x)), true), false, !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(true, true, true));
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(func_1(vec3<f32>(-450f, 519f, 521f), vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(-2484f, 200f, vec2<i32>(47193i, -2147483647i), -1000f), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 31u)])), Struct_2(vec4<f32>(-1554f, 1000f, -1041f, 779f), u_input.a.yw, u_input.b, vec2<i32>(u_input.b, 41946i), vec4<i32>(-2147483647i, -63505i, 9561i, u_input.b)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-210f, 980f, -1815f, -897f) + vec4<f32>(221f, 996f, -1248f, 1551f))))), u_input.a.xx, u_input.b, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 1i), vec3<i32>(u_input.b, 2147483647i, global0[_wgslsmith_index_u32(0u, 31u)])), -2147483647i) >> (~_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.a.zy), u_input.a.yw) % vec2<u32>(32u)), ~(~(-firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], -1i, 16137i, u_input.b)))));
    let var_1 = true;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), var_0.b, _wgslsmith_mod_i32(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(1i, -61386i))), u_input.b), vec2<i32>(max(u_input.b, -(-37711i ^ global0[_wgslsmith_index_u32(28339u, 31u)])), -6664i), var_0.e);
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.xwx * var_0.a.zwz) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_1(-205f, 1112f, vec2<i32>(u_input.b, -4218i), 482f), Struct_2(vec4<f32>(var_0.a.x, -2946f, 378f, var_0.a.x), var_0.b, u_input.b, var_0.e.zx, vec4<i32>(u_input.b, var_0.e.x, var_0.d.x, -1676i)), Struct_2(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1393f), vec2<u32>(89440u, u_input.a.x), 1i, vec2<i32>(-1i, global0[_wgslsmith_index_u32(0u, 31u)]), var_0.e), Struct_1(974f, 959f, var_0.e.xy, var_0.a.x), var_0.a.x), Struct_2(var_0.a, vec2<u32>(var_0.b.x, var_0.b.x), u_input.b, vec2<i32>(-35909i, global0[_wgslsmith_index_u32(0u, 31u)]), var_0.e))).x * _wgslsmith_f_op_f32(max(-2053f, -345f))), _wgslsmith_f_op_f32(-var_0.a.x), -541f)), vec2<u32>(24061u, 0u), Struct_1(var_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.a.x)))), -405f)), vec2<i32>(-1i) * -vec2<i32>(41571i, 2147483647i), var_0.a.x), -min((vec2<i32>(u_input.b, -2147483647i) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) ^ (vec2<i32>(-2147483647i, -27932i) >> (vec2<u32>(33592u, var_0.b.x) % vec2<u32>(32u))), abs(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])))).c.b.x;
    global0 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(~_wgslsmith_div_i32(u_input.b, -1i)), abs(-26020i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1153f, var_0.a.x, var_0.a.x) * var_0.a)) - var_0.a) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f + var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - -308f))), -866f)), vec3<u32>(select(abs(firstLeadingBit(77273u)), var_0.b.x, true), 54208u, 58715u));
}

