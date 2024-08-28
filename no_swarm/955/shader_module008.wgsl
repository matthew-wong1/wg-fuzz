struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: i32 = 1i;

var<private> global2: array<u32, 18> = array<u32, 18>(4294967295u, 0u, 54925u, 25381u, 1u, 51027u, 0u, 1u, 4294967295u, 1u, 1u, 4294967295u, 4294967295u, 88299u, 1u, 0u, 68086u, 30544u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = select(!global0[_wgslsmith_index_u32(~countOneBits(global2[_wgslsmith_index_u32(0u, 18u)]), 32u)] != (_wgslsmith_mult_u32(u_input.b.x, reverseBits(1u)) < 3168u), all(vec4<bool>(true, false, any(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 32u)], false), vec2<bool>(arg_0.b.x, false))), arg_0.b.x)), any(vec3<bool>(all(select(vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(false, arg_0.b.x), true)), true, true)));
    var var_1 = vec2<bool>(arg_0.a.b != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.c + -1000f))), all(select(!(!vec2<bool>(arg_0.b.x, true)), select(!arg_0.b.xx, !arg_0.b.yy, select(arg_0.b.xy, arg_0.b.xz, arg_0.b.x)), vec2<bool>(false, !arg_0.b.x))));
    var var_2 = arg_0.b;
    var var_3 = vec2<bool>(all(select(vec4<bool>(false, true, any(var_2.yz), var_2.x), vec4<bool>(true, !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 32u)], true, any(vec2<bool>(false, false))), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)] || true, all(vec2<bool>(var_2.x, true))))), var_1.x);
    var_1 = var_2.xx;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.c), arg_0.a.c) * _wgslsmith_f_op_vec2_f32(vec2<f32>(656f, arg_0.a.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.c, arg_0.d.b)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1041f, arg_0.d.a)))))), !select(!var_2.yy, !vec2<bool>(var_2.x, var_2.x), arg_0.b.zy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-234f, arg_0.a.c))) * vec2<f32>(arg_0.d.c, arg_0.d.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.c, 750f), vec2<f32>(298f, arg_0.d.b), !vec2<bool>(var_3.x, false)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b, arg_0.a.a)))))));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(232f * -724f)), -1117f, 1f), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true, global0[_wgslsmith_index_u32(7097u, 32u)] | global0[_wgslsmith_index_u32(8783u, 32u)]), ~(52303i << (u_input.b.x % 32u)) >> (0u % 32u), Struct_1(-652f, _wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(min(694f, 270f))), _wgslsmith_f_op_f32(f32(-1f) * -1259f)))));
    let var_1 = _wgslsmith_f_op_f32(select(-835f, -885f, global0[_wgslsmith_index_u32(~select(max(_wgslsmith_mult_u32(1u, arg_0), global2[_wgslsmith_index_u32(arg_0, 18u)]), ~0u, false), 32u)]));
    var var_2 = Struct_1(var_1, _wgslsmith_f_op_f32(-var_0.x), var_1);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a))), var_0.x, var_1);
    var_3 = Struct_1(var_3.c, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(-var_3.a))))));
    return 0u;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<bool, 32>();
    global2 = array<u32, 18>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f + -330f)) + 199f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(986f, -1062f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(387f, -1000f)))), -1197f), select(select(select(arg_1.zwy, select(arg_1.wyz, arg_3, vec3<bool>(false, arg_1.x, global0[_wgslsmith_index_u32(1u, 32u)])), !vec3<bool>(true, arg_1.x, arg_1.x)), !select(arg_1.yyz, arg_1.wzw, arg_3.x), arg_3), vec3<bool>(arg_3.x, true, global0[_wgslsmith_index_u32(~(~1u), 32u)]), true && any(!vec2<bool>(arg_1.x, true))), 2147483647i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-877f - -1275f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) + 272f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(347f * -2113f)))), 267f));
    let var_1 = Struct_2(var_0.d, !select(vec3<bool>(false, true, false), arg_3, false), select(arg_0, -reverseBits(14786i), true) & (arg_0 | arg_0), var_0.d);
    var var_2 = var_1;
    return Struct_1(1015f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1520f, _wgslsmith_f_op_f32(-var_0.a.a)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -3355f);
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1091f), -781f, _wgslsmith_f_op_f32(trunc(-2271f)));
    var var_1 = func_4(0i, vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 32u)], !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)], 32u)], true, any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(64147u, 32u)], global0[_wgslsmith_index_u32(17920u, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 32u)])))), true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_2(~global2[_wgslsmith_index_u32(40473u, 18u)]), 18u)], 32u)], all(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true | global0[_wgslsmith_index_u32(40986u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(65517u, 32u)]))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)]) << (u_input.b % vec2<u32>(32u))) << (vec2<u32>(firstTrailingBit(u_input.b.x), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(70390u, 1u), 18u)]) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, func_2(1u))), !vec3<bool>(all(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(61169u, 32u)], !global0[_wgslsmith_index_u32(1u, 32u)]));
    let var_2 = func_4(-max(0i, u_input.a), vec4<bool>(any(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]))), all(select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global0[_wgslsmith_index_u32(6681u, 32u)]), all(vec4<bool>(false, global0[_wgslsmith_index_u32(9827u, 32u)], global0[_wgslsmith_index_u32(17025u, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 32u)])))), any(vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 32u)] || global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17707u, 18u)], 32u)], global0[_wgslsmith_index_u32(firstTrailingBit(1u), 32u)])), !(!(true != global0[_wgslsmith_index_u32(38193u, 32u)]))), vec2<u32>(0u, u_input.b.x), !select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(73632u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], false), true), select(vec3<bool>(global0[_wgslsmith_index_u32(33442u, 32u)], false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false), vec3<bool>(true, false, false)), !vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 32u)], global0[_wgslsmith_index_u32(51014u, 32u)], global0[_wgslsmith_index_u32(90739u, 32u)])), !vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(47394u, 32u)], false)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) - -1740f)) * var_0.b), func_4(-u_input.a, select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(25256u, 32u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(8914u, 32u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], true, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(4294967295u, 32u)]))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(128720u, 18u)], 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 32u)], false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(81383u, 32u)], true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(true, true, true, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(29276u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(105407u, 18u)], 32u)], false), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53372u, 18u)], 32u)]))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)], u_input.b.x), u_input.b.x), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(59181u, 18u)] ^ u_input.b.x, abs(u_input.b.x), u_input.b.x)), vec3<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(53465u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])), any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 32u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(92380u, 32u)], false))), global0[_wgslsmith_index_u32(58259u, 32u)])).c, var_1.a);
    let var_3 = func_4(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.a, -9019i), countOneBits(-vec3<i32>(u_input.c, u_input.c, 0i))) << (1u % 32u), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(116597u, firstTrailingBit(~16735u)), 32u)], any(vec3<bool>(true, true, true)), true, true), ~(~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.b.x, u_input.b.x)), firstLeadingBit(u_input.b))), select(!vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), false, false), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(6941u, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 32u)])), true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, 267f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_2, vec3<bool>(true, false, true), u_input.c, Struct_1(842f, 324f, var_2.a)))).x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, var_0.a, 1550f, var_1.c) * vec4<f32>(var_2.a, -652f, 198f, var_3.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_1 = any(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 32u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1541u, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false), !vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true)), !select(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 32u)], true, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 32u)], true, false), global0[_wgslsmith_index_u32(4294967295u, 32u)]), false), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), !vec4<bool>(false, global0[_wgslsmith_index_u32(3126u, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)], 18u)], 18u)], 18u)], 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(67251u, 32u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(34187u, 32u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global0[_wgslsmith_index_u32(42481u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(26404u, 32u)], true, true)), false)), vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true)) | !global0[_wgslsmith_index_u32(6561u, 32u)], _wgslsmith_f_op_f32(exp2(var_0.x)) != _wgslsmith_f_op_f32(-var_0.x), false, all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 32u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82703u, 18u)], 18u)], 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false), false)))));
    global1 = -_wgslsmith_div_i32(1i, -reverseBits(-1903i));
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.yx))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(var_0.x, var_2, 836f), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(8835u, 32u)], true), 0i, Struct_1(-1801f, var_2, var_0.x)))).x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2, 2364f))))))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-u_input.a, i32(-1i) * -u_input.a), 40137i, -1i), vec4<i32>(abs(-_wgslsmith_clamp_i32(u_input.c, -2147483647i, u_input.c)), u_input.c, 13758i, -51009i), _wgslsmith_clamp_u32(~(0u | global2[_wgslsmith_index_u32(0u, 18u)]), countOneBits(~abs(1u)), 21967u));
}

