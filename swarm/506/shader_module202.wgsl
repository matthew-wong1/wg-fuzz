struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
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

var<private> global0: Struct_4 = Struct_4(vec3<f32>(-298f, -723f, 1236f), 2147483647i);

var<private> global1: array<bool, 27>;

var<private> global2: array<i32, 27>;

var<private> global3: array<Struct_1, 9>;

var<private> global4: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1366f - global0.a.x), -1408f, _wgslsmith_div_f32(global0.a.x, global4.a.x), _wgslsmith_f_op_f32(trunc(arg_1.x))))), vec4<f32>(-1000f, -701f, _wgslsmith_f_op_f32(-global4.a.x), global4.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, global0.a.x, 1047f, global0.a.x)) * vec4<f32>(823f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_1.x * 525f), 541f))));
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(abs(0u), 9u)], ~(u_input.b ^ abs(vec2<u32>(u_input.b.x, u_input.b.x))), Struct_1(_wgslsmith_f_op_f32(-global4.a.x), arg_1.x, !vec4<bool>(true, all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], true)), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)])), any(vec3<bool>(global1[_wgslsmith_index_u32(20629u, 27u)], false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1419f, global4.a.x) + global0.a.xy) - global4.a.zx)), global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)]);
    let var_2 = ~var_1.b.x;
    var var_3 = abs(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.b, ~(u_input.b & u_input.b), _wgslsmith_mod_vec2_u32(countOneBits(u_input.b), var_1.b)), vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 36822u), 12766u) ^ ~(~u_input.b)));
    global4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2212f, -1134f, 1568f), global0.a, global4.b != u_input.a.x)))), -2147483647i);
    return 34234u;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = vec4<i32>(firstLeadingBit(global4.b), ~global0.b, _wgslsmith_dot_vec4_i32(firstTrailingBit(firstTrailingBit(~vec4<i32>(59247i, 2147483647i, -2147483647i, 1i))), -min(vec4<i32>(global0.b, 0i, 9916i, -1i) | vec4<i32>(global4.b, 20751i, -10498i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, global0.b, -6472i, u_input.a.x), vec4<i32>(24984i, u_input.a.x, global4.b, -2147483647i)))), global0.b);
    let var_1 = _wgslsmith_div_u32(~54432u, arg_2.x);
    let var_2 = global1[_wgslsmith_index_u32((63339u >> (_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(var_1, ~u_input.b.x)) % 32u)) & u_input.b.x, 27u)];
    var var_3 = vec4<u32>(47036u, arg_2.x, _wgslsmith_div_u32(~(~var_1), ~var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(12183u, reverseBits(1u), firstTrailingBit(_wgslsmith_div_u32(5477u, 45087u))), firstLeadingBit(_wgslsmith_sub_vec3_u32(arg_2, vec3<u32>(var_1, 18884u, 0u) | vec3<u32>(arg_2.x, arg_2.x, 1u)))));
    var var_4 = _wgslsmith_add_vec3_i32(var_0.zyx, firstTrailingBit(countOneBits(var_0.yyz)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global4.a.x + global0.a.x), global0.a.x, 1455f), _wgslsmith_div_vec3_f32(global4.a, vec3<f32>(global4.a.x, -735f, global4.a.x))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, global4.a.x, 606f) - global4.a), _wgslsmith_f_op_vec3_f32(-global0.a), arg_3.b | arg_0)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.a.x, -515f, global0.a.x)))))) * global4.a);
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(func_4(global1[_wgslsmith_index_u32(func_3(min(u_input.a.x, -1i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, 1482f, global0.a.x, -906f)))), 27u)], min(u_input.a.x, -global2[_wgslsmith_index_u32(0u, 27u)]), vec3<u32>(reverseBits(1u), u_input.b.x, arg_1), Struct_3(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(4125u, 27u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(58193u, 27u)])), u_input.a.x != -58177i)))), -global0.b);
    let var_1 = all(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, arg_1), select(arg_1, 29448u, global1[_wgslsmith_index_u32(9831u, 27u)])) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x) & vec4<u32>(546u, arg_1, 23713u, u_input.b.x), ~vec4<u32>(51785u, u_input.b.x, u_input.b.x, arg_1)), 27u)], true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(469f))))))) * _wgslsmith_f_op_vec3_f32(func_4(global1[_wgslsmith_index_u32(1u, 27u)], firstLeadingBit(1i), select(abs(vec3<u32>(1u, arg_1, 4294967295u) & vec3<u32>(arg_1, 35238u, arg_1)), ~(~vec3<u32>(u_input.b.x, u_input.b.x, arg_1)), select(select(vec3<bool>(false, true, var_1), vec3<bool>(false, var_1, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), var_1), vec3<bool>(true, true, true), vec3<bool>(false, var_1, var_1))), Struct_3(vec2<bool>(all(vec3<bool>(true, false, false)), false), true & select(false, false, true)))).x);
    global0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x - 595f), global4.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + var_0.a.x), -513f, !global1[_wgslsmith_index_u32(u_input.b.x, 27u)])), global0.a.x, false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-442f, global0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, global4.a.x, global1[_wgslsmith_index_u32(21633u, 27u)]))))), i32(-1i) * -25316i);
    var var_3 = vec3<bool>(any(vec3<bool>(!all(vec2<bool>(global1[_wgslsmith_index_u32(39239u, 27u)], var_1)), true, var_1)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 212u), u_input.b)), max(vec2<u32>(3480u, ~0u), vec2<u32>(arg_1 >> (arg_1 % 32u), 4294967295u | arg_1))), 27u)], var_1 != (4294967295u < arg_1));
    return Struct_3(select(vec2<bool>(!all(var_3.zy), var_3.x), var_3.yx, var_3.zz), _wgslsmith_f_op_f32(round(-430f)) > 132f);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    global2 = array<i32, 27>();
    global3 = array<Struct_1, 9>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(388f, global4.a.x, global4.a.x) * global4.a)) * global0.a))), abs(-global4.b));
    let var_1 = func_2(-50767i, u_input.b.x);
    let var_2 = vec3<u32>(78320u, 4294967295u, ~39007u);
    return Struct_4(_wgslsmith_div_vec3_f32(var_0.a, global0.a), _wgslsmith_div_i32(global0.b << (86353u % 32u), countOneBits(var_0.b << (var_2.x % 32u)) << ((_wgslsmith_clamp_u32(u_input.b.x, 1u, 20442u) << (select(u_input.b.x, 40720u, false) % 32u)) % 32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global4 = func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), reverseBits(vec2<i32>(-5821i, u_input.a.x))), func_2(-14952i, 34703u >> (u_input.b.x % 32u)), !arg_1.c.x);
    var var_0 = vec3<u32>(u_input.b.x, abs(4294967295u), (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1203u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u))) >> (u_input.b.x % 32u)) | ~u_input.b.x);
    var var_1 = false;
    var var_2 = ~func_5(select(-u_input.a.zx, ~vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 27u)], global0.b), arg_1.c.yx), Struct_3(select(!arg_1.c.wx, vec2<bool>(arg_2, arg_1.c.x), true), !func_2(global4.b, 26013u).a.x), true | arg_1.c.x).b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -479f), arg_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 102f), func_5(vec2<i32>(u_input.a.x, global4.b), Struct_3(arg_1.c.xw, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), false).a.x), arg_1.b) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1563f, 1208f, -1319f, -1000f)), vec4<f32>(-359f, global0.a.x, -1140f, -1734f))))));
    return Struct_1(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x * 1f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(953f, global4.a.x) - arg_1.d.x)), vec4<bool>(any(!arg_1.c.yzx), 4294967295u == min(firstTrailingBit(12229u), ~u_input.b.x), true, true), arg_1.d);
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    global3 = array<Struct_1, 9>();
    let var_0 = u_input.b;
    var var_1 = ~(var_0 >> (~vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, var_0.x), 1u ^ var_0.x) % vec2<u32>(32u)));
    let var_2 = func_2(~(~u_input.a.x), firstLeadingBit(var_1.x));
    let var_3 = !vec4<bool>(true, !(_wgslsmith_add_u32(var_1.x, 28036u) >= max(var_1.x, 0u)), false, false);
    return vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mod_i32(36085i, 9326i), global0.b, -2147483647i, _wgslsmith_div_i32(14140i, global4.b) >> (_wgslsmith_div_u32(var_0.x, 5092u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_4(global4.a, _wgslsmith_mod_i32(47942i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], ~12198i))), any(!(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.a.x))), func_1(vec4<i32>(-2147483647i, global0.b, -global0.b, global0.b), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(70176u, 1u, u_input.b.x)), abs(vec3<u32>(23896u, u_input.b.x, u_input.b.x))), 9u)], global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~3850u, reverseBits(1u)), 27u)]));
    let var_1 = ~(~vec4<u32>(_wgslsmith_mod_u32(max(u_input.b.x, 0u), ~0u), _wgslsmith_mult_u32(_wgslsmith_add_u32(51004u, 32167u), u_input.b.x), 4294967295u, 1u));
    var var_2 = _wgslsmith_mod_i32(-2147483647i, -2147483647i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -253f), global4.a.x, any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 27u)], false, !global1[_wgslsmith_index_u32(var_1.x, 27u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))) * global0.a.x) + global4.a.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], false, global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b) | _wgslsmith_dot_vec3_u32(var_1.yzy, var_1.yyy), ~_wgslsmith_clamp_u32(4294967295u, 1u, var_1.x)), 27u)], !global1[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1485f + -1647f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4.a.x)), -180f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global4.a.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-328f, -595f) - global0.a.zx)))), all(func_2(-global0.b, func_3(global4.b, vec4<f32>(global4.a.x, global4.a.x, global0.a.x, global4.a.x))).a))));
    let var_4 = func_1(_wgslsmith_div_vec4_i32((~vec4<i32>(2147483647i, global0.b, global0.b, 15264i) | (vec4<i32>(-51029i, 5433i, 37473i, -2585i) >> (vec4<u32>(var_1.x, 4294967295u, u_input.b.x, 7998u) % vec4<u32>(32u)))) | vec4<i32>(1i, ~85310i, i32(-1i) * -29882i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_1.wz), 27u)]), var_0), func_1(func_6(func_5(vec2<i32>(18005i, global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), func_2(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.b.x), !global1[_wgslsmith_index_u32(1u, 27u)]), !all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 27u)], false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1404f)))), Struct_1(var_3.d.x, _wgslsmith_f_op_f32(f32(-1f) * -753f), var_3.c, _wgslsmith_f_op_vec2_f32(floor(var_3.d)))), func_1(var_0, var_3, u_input.b.x <= _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), global1[_wgslsmith_index_u32(var_1.x, 27u)]), var_3.c.x);
    global1 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

