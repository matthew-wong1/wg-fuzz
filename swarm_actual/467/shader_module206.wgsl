struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(1052f, 333f, 696f));

var<private> global2: vec2<bool>;

var<private> global3: array<u32, 12>;

var<private> global4: array<f32, 18> = array<f32, 18>(-208f, 606f, 457f, 1279f, -892f, -1206f, 1270f, 750f, -487f, 495f, -778f, -823f, -546f, -548f, -1640f, -1130f, 1681f, 538f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    global0 = array<u32, 9>();
    let var_0 = i32(-1i) * -(~(~(~3838i)));
    let var_1 = ~max(~(~vec4<u32>(49144u, 1u, u_input.a.x, 0u) << (~vec4<u32>(4294967295u, 20195u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(19950u, 0u, 45085u, 1u)), ~vec4<u32>(64328u, global3[_wgslsmith_index_u32(49971u, 12u)], 4294967295u, 21517u) ^ firstLeadingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 9u)], 0u, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44643u, 12u)], 9u)]))));
    let var_2 = !vec4<bool>(!global2.x, (all(vec2<bool>(true, global2.x)) & select(global2.x, global2.x, true)) || (var_0 == -var_0), true, global2.x);
    let var_3 = Struct_1(vec3<f32>(global4[_wgslsmith_index_u32(~(u_input.a.x ^ 64431u), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-342f * global4[_wgslsmith_index_u32(0u, 18u)])) - -446f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 18u)])));
    return var_1.xzy;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> bool {
    var var_0 = arg_1;
    global2 = vec2<bool>(arg_3, any(vec3<bool>(arg_3, true, arg_2)));
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.a, func_3());
    var var_2 = vec3<i32>(-15147i, _wgslsmith_clamp_i32(i32(-1i) * -1i, 1i, -1i), -15582i);
    let var_3 = var_1;
    return all(!select(!select(vec2<bool>(false, false), vec2<bool>(true, arg_2), vec2<bool>(arg_3, true)), vec2<bool>(any(vec4<bool>(arg_3, false, false, arg_3)), true), select(vec2<bool>(arg_2, false), select(vec2<bool>(true, arg_2), vec2<bool>(global2.x, arg_3), vec2<bool>(false, true)), var_2.x >= var_2.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.a.yy;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a - _wgslsmith_f_op_vec3_f32(trunc(arg_1.a))));
    let var_2 = arg_1;
    var var_3 = firstTrailingBit(select(vec3<i32>(-29137i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, ~29929i, 11760i), 39090i >> (global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(2250u, 9u)], u_input.a.x), 12u)] % 32u)), countOneBits(_wgslsmith_div_vec3_i32(~vec3<i32>(9821i, -7094i, 6328i), select(vec3<i32>(-1i, -17499i, 2147483647i), vec3<i32>(9228i, 42021i, 31465i), true))), true));
    let var_4 = 1i;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    let var_0 = func_4(_wgslsmith_dot_vec2_u32(select(firstTrailingBit(arg_1.zw), max(vec2<u32>(43160u, arg_1.x), arg_1.wz), func_2(global4[_wgslsmith_index_u32(14552u, 18u)], Struct_1(global1.a), global2.x, false)), vec2<u32>(arg_1.x, global3[_wgslsmith_index_u32(1u, 12u)])) <= _wgslsmith_dot_vec2_u32(~u_input.a.xz >> (arg_1.xw % vec2<u32>(32u)), select(_wgslsmith_div_vec2_u32(u_input.a.yx, arg_1.xx), ~arg_1.zz, !global2.x)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(1u, 18u)])), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(4294967295u), global3[_wgslsmith_index_u32(min(0u, u_input.a.x), 12u)]), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, 418f)))));
    let var_1 = any(vec4<bool>(func_2(_wgslsmith_f_op_f32(abs(-1000f)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-577f, var_0.a.x, -1464f) * global1.a)), func_2(_wgslsmith_f_op_f32(-global1.a.x), var_0, select(global2.x, global2.x, global2.x), true), any(vec4<bool>(true, global2.x, global2.x, false))), global2.x, !select(101095u == arg_1.x, global2.x, global2.x), true));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 9>();
    let var_0 = abs(reverseBits(~vec4<u32>(abs(global3[_wgslsmith_index_u32(66404u, 12u)]), 0u, func_1(global1.a.x, vec4<u32>(u_input.a.x, 1u, global0[_wgslsmith_index_u32(53365u, 9u)], global0[_wgslsmith_index_u32(89256u, 9u)])), 32371u)));
    var var_1 = func_4(true, func_4(!any(!vec2<bool>(global2.x, global2.x)), Struct_1(vec3<f32>(func_4(false, Struct_1(global1.a)).a.x, global1.a.x, _wgslsmith_f_op_f32(max(1609f, 1054f))))));
    global3 = array<u32, 12>();
    var var_2 = vec4<bool>(true, global2.x, global2.x, any(vec3<bool>(func_2(_wgslsmith_f_op_f32(sign(var_1.a.x)), func_4(global2.x, Struct_1(vec3<f32>(var_1.a.x, 1326f, -1611f))), false, all(vec4<bool>(global2.x, false, global2.x, global2.x))), -33476i >= _wgslsmith_dot_vec4_i32(vec4<i32>(32927i, 28006i, -26531i, 9527i), vec4<i32>(-1i, -8708i, -2147483647i, 5944i)), true)));
    var var_3 = !vec2<bool>(all(!var_2.yxy), true);
    let var_4 = func_4(all(!vec2<bool>(any(var_2.wyy), false)), func_4(var_0.x >= 1u, func_4(true, func_4(!var_2.x, Struct_1(vec3<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 18u)], -1424f, 1456f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(max(56703u, var_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 82732u) | select(u_input.a.xz, vec2<u32>(97277u, 0u), var_2.xx), vec2<u32>(var_0.x, 5429u)), min(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~22985u, 9u)], 12u)], 9u)], _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19652u, 12u)], 12u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 12u)]) ^ _wgslsmith_dot_vec2_u32(u_input.a.zx, var_0.xz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a.x, 18u)] + -235f), global1.a.x) - -2220f)), u_input.a.x, global3[_wgslsmith_index_u32(var_0.x, 12u)]);
}

