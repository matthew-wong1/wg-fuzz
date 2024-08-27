struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<i32, 7>;

var<private> global4: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<i32>(-38035i, 32631i), Struct_1(-1000f), 8474u, Struct_1(1000f)), Struct_2(vec2<i32>(-30592i, i32(-2147483648)), Struct_1(-232f), 30851u, Struct_1(363f)), Struct_2(vec2<i32>(65382i, 2147483647i), Struct_1(-521f), 1u, Struct_1(2198f)), Struct_2(vec2<i32>(i32(-2147483648), 14115i), Struct_1(-1000f), 29688u, Struct_1(900f)), Struct_2(vec2<i32>(1i, 0i), Struct_1(-1139f), 1u, Struct_1(-1000f)), Struct_2(vec2<i32>(-40688i, -3830i), Struct_1(-197f), 10500u, Struct_1(-1066f)), Struct_2(vec2<i32>(3850i, 0i), Struct_1(899f), 4294967295u, Struct_1(1311f)), Struct_2(vec2<i32>(44693i, 10313i), Struct_1(-646f), 8576u, Struct_1(145f)), Struct_2(vec2<i32>(39967i, 4448i), Struct_1(767f), 1u, Struct_1(-822f)), Struct_2(vec2<i32>(10831i, -92461i), Struct_1(-1438f), 14569u, Struct_1(-717f)), Struct_2(vec2<i32>(-64582i, -36775i), Struct_1(-477f), 4294967295u, Struct_1(578f)), Struct_2(vec2<i32>(6073i, 39908i), Struct_1(-906f), 47062u, Struct_1(-2277f)), Struct_2(vec2<i32>(2147483647i, 21385i), Struct_1(-581f), 1u, Struct_1(-1112f)), Struct_2(vec2<i32>(22597i, 18232i), Struct_1(-933f), 43427u, Struct_1(-257f)), Struct_2(vec2<i32>(-1i, 0i), Struct_1(589f), 4294967295u, Struct_1(-2560f)), Struct_2(vec2<i32>(1i, 0i), Struct_1(734f), 38918u, Struct_1(-196f)), Struct_2(vec2<i32>(i32(-2147483648), -18578i), Struct_1(378f), 6341u, Struct_1(-742f)), Struct_2(vec2<i32>(-15462i, -14630i), Struct_1(2060f), 4294967295u, Struct_1(833f)), Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(-306f), 28744u, Struct_1(425f)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(322f), 1u, Struct_1(2809f)), Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(-866f), 4294967295u, Struct_1(-304f)), Struct_2(vec2<i32>(-61613i, 8712i), Struct_1(307f), 4294967295u, Struct_1(-405f)), Struct_2(vec2<i32>(-40012i, 904i), Struct_1(392f), 23128u, Struct_1(-990f)), Struct_2(vec2<i32>(0i, -39036i), Struct_1(-1155f), 38917u, Struct_1(432f)), Struct_2(vec2<i32>(9271i, -20354i), Struct_1(-1561f), 1u, Struct_1(-566f)), Struct_2(vec2<i32>(7020i, 43969i), Struct_1(-495f), 3914u, Struct_1(-1000f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> bool {
    global3 = array<i32, 7>();
    let var_0 = arg_1;
    global4 = array<Struct_2, 26>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -917f))) - _wgslsmith_f_op_f32(ceil(arg_1.x)));
    global2 = array<Struct_1, 29>();
    return true;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1556f, arg_1, arg_1, arg_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 707f, arg_1, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1)), arg_1, arg_1, -174f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 - -1000f), _wgslsmith_f_op_f32(-arg_1), arg_1, -1000f)))));
    global1 = select(select(!(!select(vec3<bool>(false, global1.x, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global1.x))), vec3<bool>(true, global0.x, func_3(-vec4<i32>(global3[_wgslsmith_index_u32(54784u, 7u)], u_input.a, u_input.a, 1i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, arg_1, arg_1, -978f))), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], 13932i))), !vec3<bool>(903f < arg_1, true, all(vec4<bool>(true, arg_0, global0.x, true)))), vec3<bool>(global0.x, !(!arg_0), all(select(select(vec3<bool>(true, true, false), vec3<bool>(arg_0, arg_0, global0.x), vec3<bool>(global1.x, arg_0, global1.x)), vec3<bool>(true, true, true), true))), !vec3<bool>(false, !(!arg_0), any(select(global1.yz, global1.yz, true))));
    var var_1 = select(_wgslsmith_mod_u32(~abs(83940u), ~1u) > ((select(0u, 0u, true) << (_wgslsmith_dot_vec3_u32(vec3<u32>(47818u, 12334u, 23838u), vec3<u32>(79617u, 1u, 46096u)) % 32u)) | 1u), true || arg_0, all(!vec3<bool>(func_3(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a, -25862i, u_input.a), vec4<f32>(-678f, arg_1, arg_1, var_0.x), vec2<i32>(-2147483647i, u_input.a)), var_0.x > var_0.x, select(global1.x, global1.x, false))));
    let var_2 = Struct_2(-abs(~vec2<i32>(global3[_wgslsmith_index_u32(51111u, 7u)], u_input.a)), global2[_wgslsmith_index_u32(4294967295u, 29u)], ~(~(~_wgslsmith_add_u32(1u, 51211u))), global2[_wgslsmith_index_u32(4294967295u, 29u)]);
    var_1 = abs(max(4294967295u, var_2.c ^ _wgslsmith_add_u32(68225u, var_2.c))) != 0u;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) * var_2.d.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = vec4<bool>(global1.x | global1.x, all(global1.zx), false, all(select(select(!vec4<bool>(global0.x, true, false, true), !vec4<bool>(true, global1.x, global1.x, global0.x), select(true, true, false)), vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(true, false, true, global0.x))));
    let var_1 = global4[_wgslsmith_index_u32(min(~(~_wgslsmith_mod_u32(~arg_1.c, abs(arg_1.c))), ~arg_1.c), 26u)];
    let var_2 = func_2(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(916f, -452f), _wgslsmith_f_op_f32(abs(arg_0.a)), true & var_0.x)))), var_0.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(267f, -251f) * _wgslsmith_f_op_f32(-var_2.a)), -148f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-485f + _wgslsmith_div_f32(arg_0.a, -422f)), _wgslsmith_f_op_f32(-2112f + 121f))))));
    global3 = array<i32, 7>();
    return global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.c, 1u, 34198u) << (arg_1.c % 32u), (var_1.c << (arg_1.c % 32u)) << (_wgslsmith_add_u32(arg_1.c, var_1.c) % 32u)), ~abs(var_1.c)), 26u)];
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(global1.x & true, 1f), global4[_wgslsmith_index_u32(23878u, 26u)], _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(526f, 1f, _wgslsmith_f_op_f32(1924f * 345f), -361f), vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_1 = vec3<u32>(abs(_wgslsmith_add_u32(35289u, countOneBits(~var_0.c))), var_0.c, var_0.c);
    let var_2 = var_0.d.a;
    global3 = array<i32, 7>();
    let var_3 = vec3<i32>(1i, -6218i, ~(~(-1i << (var_1.x % 32u))) ^ _wgslsmith_sub_i32(-2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(var_1.x, 19628u, true), 27303u), 7u)]));
    return func_4(Struct_1(_wgslsmith_f_op_f32(min(908f, _wgslsmith_f_op_f32(f32(-1f) * -1526f)))), global4[_wgslsmith_index_u32(~0u, 26u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-452f, -1135f), var_0.b.a, _wgslsmith_f_op_f32(-198f * -435f), _wgslsmith_f_op_f32(sign(var_0.b.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, var_0.b.a, -638f, var_0.b.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-790f, var_0.d.a, var_0.b.a, var_0.d.a) * vec4<f32>(-585f, 1375f, var_0.d.a, var_0.d.a))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d.a, var_0.b.a, -174f, -1969f)))))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(779f)) - -1306f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1221f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(438f + -1000f), -495f)))));
    let var_1 = true;
    let var_2 = global2[_wgslsmith_index_u32(abs(~firstLeadingBit(75007u)), 29u)];
    global0 = select(vec2<bool>(global0.x, global0.x), global1.yy, true);
    var var_3 = func_1();
    let var_4 = global2[_wgslsmith_index_u32(min(13755u, 12715u & _wgslsmith_mod_u32(select(7524u, 0u, var_1), 0u)), 29u)];
    global3 = array<i32, 7>();
    let var_5 = func_4(global2[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(32364u, 28903u), 26u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a * var_2.a))), -316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(633f)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, 1830f)), _wgslsmith_f_op_f32(-746f + var_4.a), 989f, _wgslsmith_f_op_f32(-975f + var_3.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 362f, var_4.a, var_2.a) + vec4<f32>(-1000f, 711f, 1453f, var_3.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, var_3.a, var_4.a, 153f)))))));
    var var_6 = select(_wgslsmith_mult_vec3_u32(max(firstTrailingBit(vec3<u32>(var_5.c, var_5.c, 17321u)) & max(vec3<u32>(var_5.c, 0u, 1u), vec3<u32>(4294967295u, var_5.c, var_5.c)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 78412u, var_5.c), vec3<u32>(var_5.c, var_5.c, var_5.c))), vec3<u32>(countOneBits(~0u), 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(102736u << (reverseBits(var_5.c) % 32u), max(var_5.c, 1u) >> (~4294967295u % 32u), (var_5.c ^ 4294967295u) & (var_5.c ^ var_5.c)), countOneBits((vec3<u32>(var_5.c, var_5.c, var_5.c) << (vec3<u32>(55786u, 47998u, 1u) % vec3<u32>(32u))) & ~vec3<u32>(0u, 4294967295u, var_5.c)), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(2831u, var_5.c), abs(vec2<u32>(var_5.c, 82341u))), ~0u, _wgslsmith_add_u32(var_5.c | 0u, 13540u))), !(!vec3<bool>(false || var_1, 86859u < var_5.c, var_2.a >= var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_5.a.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(-26502i, 40972i, 2147483647i), vec3<i32>(-28317i, global3[_wgslsmith_index_u32(0u, 7u)], -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(8053u, 7u)], -1i) | vec3<i32>(u_input.a, var_5.a.x, global3[_wgslsmith_index_u32(1u, 7u)]), min(vec3<i32>(u_input.a, 24043i, -42330i), vec3<i32>(-1i, 26819i, -2147483647i))), var_5.a.x));
}

