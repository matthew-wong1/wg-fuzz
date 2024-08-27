struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, true, false, false, false, true, false, true, false, false, true, false, false, true, false, true, false);

var<private> global1: Struct_3;

var<private> global2: array<f32, 26>;

var<private> global3: array<i32, 22>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    var var_0 = u_input.a.x;
    let var_1 = true;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.yz, vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a.x), _wgslsmith_sub_i32(1i, -44969i))), -select(min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 0i)), select(u_input.a.xz, u_input.a.zx, false), global0[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_sub_i32(24500i, 0i), ~_wgslsmith_dot_vec4_i32(~(vec4<i32>(0i, global3[_wgslsmith_index_u32(global1.a, 22u)], 0i, 2147483647i) >> (vec4<u32>(global1.a, global1.a, global1.a, global1.a) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(40856u, 22u)], global3[_wgslsmith_index_u32(global1.a, 22u)], 1i)), select(vec4<i32>(global3[_wgslsmith_index_u32(global1.a, 22u)], -5414i, global3[_wgslsmith_index_u32(9386u, 22u)], global3[_wgslsmith_index_u32(1u, 22u)]), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(global1.a, 18u)]))), _wgslsmith_sub_i32(u_input.a.x, ~(1i << (global1.a % 32u))) & 27218i);
    global0 = array<bool, 18>();
    global2 = array<f32, 26>();
    return vec3<bool>(!(!all(!vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 18u)], true))), true != (!(!global0[_wgslsmith_index_u32(global1.a, 18u)]) || var_1), any(select(vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 18u)], false), vec2<bool>(any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.a, 18u)], var_1)), !global0[_wgslsmith_index_u32(global1.a, 18u)]), !vec2<bool>(var_1, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: u32) -> u32 {
    global2 = array<f32, 26>();
    let var_0 = 6375i;
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(arg_1.a.a)))))), ~(~(-20003i) >> (_wgslsmith_mod_u32(55481u, arg_2) % 32u)), arg_1.a.c, _wgslsmith_mult_vec4_i32(-min(arg_1.a.d, arg_1.a.d), firstLeadingBit(arg_1.a.d)), arg_1.a.a.x), Struct_3(~_wgslsmith_sub_u32(~4294967295u, arg_2)), vec4<bool>(!(!arg_1.c.x) && !(!arg_1.c.x), any(!vec4<bool>(arg_1.c.x, true, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 18u)])), arg_2 >= 16512u, _wgslsmith_f_op_f32(max(arg_1.a.c.a.x, -2275f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-898f, -1126f, true)))), Struct_3((arg_2 >> (49845u % 32u)) >> (_wgslsmith_sub_u32(111472u << (arg_1.d.a % 32u), arg_1.b.a << (arg_2 % 32u)) % 32u)));
    let var_2 = !(!arg_1.c.x);
    var var_3 = min(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a | vec3<i32>(global3[_wgslsmith_index_u32(global1.a, 22u)], var_0, var_1.a.c.b)), 13305i), -10125i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a.b, var_1.a.d.x, -1i, -28892i) ^ var_1.a.d), _wgslsmith_mult_vec4_i32(arg_1.a.d, var_1.a.d))), arg_1.a.c.b);
    return 1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    var var_0 = vec3<i32>(0i, -_wgslsmith_div_i32(i32(-1i) * -36980i, ~u_input.a.x & min(u_input.a.x, -31917i)), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 0u, arg_0.x) ^ vec4<u32>(4294967295u, global1.a, arg_0.x, 5171u), _wgslsmith_add_vec4_u32(vec4<u32>(global1.a, 1655u, 4294967295u, arg_0.x), vec4<u32>(25480u, 13496u, 0u, global1.a))), global1.a), 22u)], countOneBits(_wgslsmith_mult_i32(select(global3[_wgslsmith_index_u32(arg_0.x, 22u)], -2147483647i, true), 1i))));
    let var_1 = -9760i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1131f) - global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_4(func_3(), Struct_4(Struct_2(vec3<f32>(arg_1, 776f, global2[_wgslsmith_index_u32(55170u, 26u)]), 1i, Struct_1(vec4<f32>(arg_1, 332f, global2[_wgslsmith_index_u32(arg_0.x, 26u)], global2[_wgslsmith_index_u32(24606u, 26u)]), 2147483647i), vec4<i32>(var_1, -1i, u_input.a.x, 39098i), 148f), Struct_3(global1.a), vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(global1.a, 18u)], true, false), Struct_3(arg_0.x)), reverseBits(arg_0.x)), global1.a), 26u)]);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-707f, arg_0, global2[_wgslsmith_index_u32(1u, 26u)]), vec3<f32>(arg_0, arg_0, 438f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(993f, arg_0, -410f), vec3<f32>(global2[_wgslsmith_index_u32(0u, 26u)], arg_0, 1580f)), vec3<f32>(arg_0, -560f, arg_0), false && arg_2)), true)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, -209f, arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global1.a, 26u)], global2[_wgslsmith_index_u32(3110u, 26u)], global2[_wgslsmith_index_u32(arg_1, 26u)]) + vec3<f32>(239f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-486f, -948f, arg_0) + vec3<f32>(arg_0, arg_0, 761f)), vec3<f32>(arg_0, 1454f, arg_0)))))), (2147483647i >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(global1.a, arg_1), vec2<u32>(arg_1, arg_1), arg_2), ~vec2<u32>(global1.a, global1.a)) % 32u)) & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a.x), -25409i, -1i), abs(select(vec4<i32>(-1524i, u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(32887u, 22u)]), vec4<i32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(2711u, 22u)], global3[_wgslsmith_index_u32(8277u, 22u)]), true))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, 1000f, 561f))), vec4<f32>(-442f, -236f, arg_0, _wgslsmith_f_op_f32(func_2(vec2<u32>(arg_1, 4294967295u), arg_0))))), abs(~37323i) << (global1.a % 32u)), ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, 15834i, global3[_wgslsmith_index_u32(1u, 22u)], -4710i)), -vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 22u)], -32386i, -17600i), vec4<i32>(-1i, 1i, global3[_wgslsmith_index_u32(25932u, 22u)], global3[_wgslsmith_index_u32(16230u, 22u)])), ~(~vec4<i32>(global3[_wgslsmith_index_u32(global1.a, 22u)], 2147483647i, -2147483647i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-591f)) + global2[_wgslsmith_index_u32(arg_1, 26u)]));
    var var_1 = global1.a;
    var var_2 = any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_2), global0[_wgslsmith_index_u32(arg_1 & global1.a, 18u)]), false)) == true;
    let var_3 = select(global0[_wgslsmith_index_u32(min(select(arg_1, firstTrailingBit(~0u), arg_2), arg_1), 18u)], any(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global1.a, reverseBits(arg_1)), 18u)], 1i < abs(var_0.c.b), all(!vec4<bool>(global0[_wgslsmith_index_u32(39774u, 18u)], global0[_wgslsmith_index_u32(32027u, 18u)], false, arg_2)), all(!vec3<bool>(true, arg_2, false)))), !any(vec2<bool>(func_3().x, !global0[_wgslsmith_index_u32(arg_1, 18u)])));
    var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(43060u, countOneBits(1u)), _wgslsmith_sub_u32(81663u, func_4(!vec3<bool>(true, false, arg_2), Struct_4(Struct_2(vec3<f32>(arg_0, global2[_wgslsmith_index_u32(75285u, 26u)], 961f), 2147483647i, var_0.c, vec4<i32>(global3[_wgslsmith_index_u32(arg_1, 22u)], -33647i, 2147483647i, var_0.d.x), arg_0), Struct_3(global1.a), vec4<bool>(false, false, false, false), Struct_3(global1.a)), _wgslsmith_mod_u32(arg_1, global1.a))), 0u), ~global1.a);
    return Struct_2(vec3<f32>(global2[_wgslsmith_index_u32(firstLeadingBit(~arg_1) | 4294967295u, 26u)], _wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * arg_0)))))), u_input.a.x, var_0.c, var_0.d, -1204f);
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = !(!func_3());
    global1 = arg_2.d;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.a.c.a.xwx, arg_2.a.a) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 1013f, arg_2.a.e), arg_2.a.a)))), -(arg_3.x | global3[_wgslsmith_index_u32(~global1.a, 22u)]), arg_2.a.c, arg_2.a.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(min(1414f, 540f)))))), Struct_3(~firstTrailingBit(39928u)), !(!(!vec4<bool>(true, var_0.x, var_0.x, false))), arg_2.b);
    return var_1.a;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1003f, global2[_wgslsmith_index_u32(arg_1, 26u)], arg_0, 233f), vec4<f32>(arg_2, arg_0, 564f, 251f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, -2153f, arg_2, global2[_wgslsmith_index_u32(62615u, 26u)])), vec4<bool>(global3[_wgslsmith_index_u32(arg_3.a, 22u)] != 2147483647i, false & global0[_wgslsmith_index_u32(4294967295u, 18u)], !global0[_wgslsmith_index_u32(arg_3.a, 18u)], true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(825f, -238f, global2[_wgslsmith_index_u32(79393u, 26u)], -345f), vec4<f32>(arg_0, arg_2, 1947f, global2[_wgslsmith_index_u32(arg_1, 26u)]), vec4<bool>(global0[_wgslsmith_index_u32(74491u, 18u)], global0[_wgslsmith_index_u32(arg_1, 18u)], true, global0[_wgslsmith_index_u32(62700u, 18u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], -1554f, arg_2, 185f) - vec4<f32>(-1557f, arg_2, 1909f, -1206f))))), true));
    let var_1 = func_6(any(!select(select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(10940u, 18u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_1, 18u)], global0[_wgslsmith_index_u32(global1.a, 18u)])), !vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global1.a, 18u)]), true)), arg_3.a, Struct_4(func_5(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec2_u32(vec2<u32>(91264u, 4294967295u), vec2<u32>(arg_3.a, arg_3.a)), 387f)), _wgslsmith_dot_vec4_u32(vec4<u32>(13599u, 30506u, 1u, arg_1), vec4<u32>(81602u, 1u, 4294967295u, arg_1)) >> (~arg_1 % 32u), false), Struct_3(arg_3.a), !select(vec4<bool>(global0[_wgslsmith_index_u32(41562u, 18u)], false, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(2260u, 18u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1, 18u)], false, global0[_wgslsmith_index_u32(arg_3.a, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_3.a, 18u)], true, false, true)), arg_1 <= global1.a), Struct_3(_wgslsmith_mod_u32(28478u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 19023u), vec3<u32>(20978u, arg_3.a, 108221u))))), ~(-(vec3<i32>(-1i) * -vec3<i32>(global3[_wgslsmith_index_u32(591u, 22u)], global3[_wgslsmith_index_u32(global1.a, 22u)], -47274i))));
    global1 = arg_3;
    let var_2 = 0i;
    global3 = array<i32, 22>();
    return var_1.c;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    let var_0 = all(func_3().yy);
    global1 = Struct_3(~global1.a);
    global3 = array<i32, 22>();
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.a, 26u)] * 1000f) + arg_0.c.a.x), _wgslsmith_add_u32(~countOneBits(func_4(vec3<bool>(true, true, var_0), Struct_4(arg_0, Struct_3(8726u), vec4<bool>(true, global0[_wgslsmith_index_u32(12234u, 18u)], false, false), Struct_3(0u)), 4294967295u)), arg_1.a), 368f, Struct_3(~(_wgslsmith_add_u32(0u, arg_1.a) >> ((global1.a ^ 18201u) % 32u))));
    var var_2 = arg_0;
    return select(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_div_i32(arg_0.b, func_5(var_1.a.x, 4294967295u, false).c.b)), global3[_wgslsmith_index_u32(firstTrailingBit(~global1.a), 22u)], global3[_wgslsmith_index_u32(select(79591u ^ global1.a, ~global1.a, true), 22u)] << (~1u % 32u)), -2147483647i, ~abs(reverseBits(global3[_wgslsmith_index_u32(arg_1.a, 22u)])) == abs(~abs(var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a, 26u)]), 541f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global1.a), 26u)]))), _wgslsmith_dot_vec2_i32(u_input.a.xx & u_input.a.xz, vec2<i32>(i32(-1i) * -2147483647i, -5812i)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f - global2[_wgslsmith_index_u32(50442u, 26u)])), 9056u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_div_f32(-417f, 161f)), Struct_3(4294967295u)), _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global3[_wgslsmith_index_u32(0u, 22u)], -1i, 0i), vec4<i32>(global3[_wgslsmith_index_u32(1u, 22u)], 0i, u_input.a.x, 8780i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, global3[_wgslsmith_index_u32(14017u, 22u)], global3[_wgslsmith_index_u32(global1.a, 22u)], 0i), -vec4<i32>(52123i, global3[_wgslsmith_index_u32(global1.a, 22u)], 2147483647i, 2147483647i))), global2[_wgslsmith_index_u32(global1.a, 26u)]), Struct_3(~45637u));
    var_0 = countOneBits(~(u_input.a.x ^ -16779i));
    var var_1 = !(global1.a == 0u);
    var var_2 = func_6(true, 0u, Struct_4(func_6(true, max(0u, 0u) | firstLeadingBit(global1.a), Struct_4(func_5(global2[_wgslsmith_index_u32(4294967295u, 26u)], 0u, global0[_wgslsmith_index_u32(2796u, 18u)]), Struct_3(0u), select(vec4<bool>(true, global0[_wgslsmith_index_u32(57146u, 18u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], true, false, global0[_wgslsmith_index_u32(global1.a, 18u)]), vec4<bool>(false, true, true, true)), Struct_3(global1.a)), -(vec3<i32>(1i, -2147483647i, u_input.a.x) << (vec3<u32>(45154u, 1u, global1.a) % vec3<u32>(32u)))), Struct_3(~(global1.a & 4294967295u)), vec4<bool>(countOneBits(global1.a) == _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1.a), vec3<u32>(global1.a, 38228u, 4294967295u)), true, false, func_3().x), Struct_3(_wgslsmith_div_u32(global1.a, global1.a))), vec3<i32>(~u_input.a.x >> (34791u % 32u), firstTrailingBit(~_wgslsmith_div_i32(2147483647i, u_input.a.x)), _wgslsmith_div_i32((i32(-1i) * -41605i) & _wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 22u)], 2147483647i), func_6(true, global1.a, Struct_4(Struct_2(vec3<f32>(-1589f, 1065f, 1501f), -5400i, Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(global1.a, 26u)], -1546f, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), -48305i), vec4<i32>(1i, global3[_wgslsmith_index_u32(global1.a, 22u)], global3[_wgslsmith_index_u32(global1.a, 22u)], u_input.a.x), 1000f), Struct_3(23559u), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false, global0[_wgslsmith_index_u32(global1.a, 18u)], true), Struct_3(global1.a)), min(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(u_input.a.x, 27455i, u_input.a.x))).c.b)));
    global3 = array<i32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(19599i, global3[_wgslsmith_index_u32(countOneBits(31690u), 22u)]) << (vec2<u32>(_wgslsmith_sub_u32(global1.a, 1u), global1.a << (global1.a % 32u)) % vec2<u32>(32u))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 37968i, global3[_wgslsmith_index_u32(global1.a, 22u)], global3[_wgslsmith_index_u32(global1.a, 22u)]), var_2.d, vec4<i32>(-21967i, 17067i, u_input.a.x, u_input.a.x)), abs(vec4<i32>(10164i, u_input.a.x, 2147483647i, 21309i))), -45951i), ~global1.a);
}

