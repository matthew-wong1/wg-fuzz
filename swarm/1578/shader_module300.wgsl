struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, false, true, false, false, false, false, true, false);

var<private> global1: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false));

var<private> global2: bool = false;

var<private> global3: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global3 = array<vec3<bool>, 3>();
    var var_0 = Struct_2(false, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-427f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-631f, -420f), vec2<f32>(944f, 488f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(110f, 637f) - vec2<f32>(-855f, 1783f)), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(9686u, 10u)])))))), select(select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)], false, global0[_wgslsmith_index_u32(1u, 10u)]), false), vec4<bool>(global0[_wgslsmith_index_u32(27627u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], false, global0[_wgslsmith_index_u32(43874u, 10u)]), u_input.a.x > u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], true, !global0[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(true, u_input.a.x >= 1176i, true, false)), vec4<bool>(true, true, !global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), !select(select(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(17726u, 7u)], true), select(global1[_wgslsmith_index_u32(88421u, 7u)], vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], false, global0[_wgslsmith_index_u32(1u, 10u)]), global0[_wgslsmith_index_u32(4294967295u, 10u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(19489u, 10u)], false, global0[_wgslsmith_index_u32(38467u, 10u)]))));
    var var_1 = Struct_2(!((true & !var_0.c.x) & true), var_0.b, vec4<bool>(true, all(global3[_wgslsmith_index_u32(~min(4294967295u, 62916u), 3u)]), true, any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 7u)])));
    global4 = !(!global0[_wgslsmith_index_u32(1u, 10u)]);
    var_1 = Struct_2(true, var_1.b, var_1.c);
    return ~(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 31021u), ~vec2<u32>(1u, 4294967295u))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = firstLeadingBit(min(u_input.a << (vec2<u32>(0u, arg_0) % vec2<u32>(32u)), ~u_input.a));
    let var_1 = min(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(func_3(), arg_0 >> (arg_0 % 32u), arg_0, arg_0 >> (50021u % 32u))), vec4<u32>(func_3(), arg_0, min(arg_0, ~arg_0), countOneBits(arg_0))), ~vec4<u32>(17300u, 53662u, firstLeadingBit(arg_0), ~(~0u)));
    var var_2 = global3[_wgslsmith_index_u32(0u, 3u)];
    global0 = array<bool, 10>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-546f, _wgslsmith_div_f32(-877f, -1294f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1135f, 1288f), vec2<f32>(2131f, -1429f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -921f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, 394f) - vec2<f32>(1000f, -615f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1157f, 774f))))))));
    return Struct_2(global0[_wgslsmith_index_u32(~(var_1.x << (~(var_1.x & 38156u) % 32u)), 10u)], Struct_1(_wgslsmith_f_op_vec2_f32(-var_3.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1092f, 432f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, 1124f) - vec2<f32>(294f, 1117f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.a.x, -141f), var_3.a)))), vec4<bool>(false, !all(!global3[_wgslsmith_index_u32(0u, 3u)]), global0[_wgslsmith_index_u32(func_3(), 10u)], (75173u << (func_3() % 32u)) <= _wgslsmith_clamp_u32(101841u, func_3(), var_1.x | arg_0)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    return countOneBits((vec4<i32>(u_input.a.x & 6605i, select(u_input.a.x, 2147483647i, false), reverseBits(0i), ~(-1i)) & vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a.x), u_input.a.x, u_input.a.x, 44034i)) >> (min(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 3998u, 107544u), vec4<u32>(51012u, 18263u, 6563u, 87440u), vec4<u32>(10391u, 0u, 0u, 45015u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 501f), vec2<f32>(1000f, -733f)))), vec2<f32>(-138f, _wgslsmith_f_op_f32(f32(-1f) * -1715f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-159f, -920f), vec2<f32>(165f, 199f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(776f, -1207f) + vec2<f32>(-766f, -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, _wgslsmith_f_op_f32(max(-103f, -1048f)))), vec2<bool>(all(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 10u)], false)), true))));
    global0 = array<bool, 10>();
    let var_1 = select(global1[_wgslsmith_index_u32(~(~(~(~1u))), 7u)], global1[_wgslsmith_index_u32(func_3(), 7u)], true);
    var_0 = Struct_1(vec2<f32>(-1052f, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(215f, -566f))), var_0.b);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(~1u).b.a.x, _wgslsmith_f_op_f32(var_0.b.x * 315f))), var_0.a);
    return 67649u;
}

fn func_1() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~func_5(func_4(vec2<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true), func_2(1u), func_2(0u), Struct_1(vec2<f32>(1199f, 1172f), vec2<f32>(214f, 532f))))), 10u)];
    var var_1 = -(~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), ~u_input.a.x, u_input.a.x) << (vec3<u32>(~4294967295u, func_5(max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-12110i, -33701i, 36343i, -1069i))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 42817u), select(vec3<u32>(4294967295u, 22293u, 42872u), vec3<u32>(4294967295u, 36354u, 6u), true))) % vec3<u32>(32u)));
    var var_2 = min(abs(~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(106696u, 73600u, 32910u), vec3<u32>(387u, 23102u, 118544u)))), ~vec3<u32>(~func_5(vec4<i32>(var_1.x, u_input.a.x, -1i, 0i)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8687u, 51873u, 11476u), vec4<u32>(1u, 1u, 1u, 1u)), 1u));
    var var_3 = ~abs(func_4(select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(31707u, 10u)]), func_2(var_2.x).c.yw, true), func_2(1u), Struct_2(!global0[_wgslsmith_index_u32(var_2.x, 10u)], func_2(4294967295u).b, !global1[_wgslsmith_index_u32(var_2.x, 7u)]), func_2(1u).b).zy);
    var var_4 = Struct_2(_wgslsmith_div_i32(u_input.a.x, 0i) > reverseBits(-61850i), func_2(34599u).b, select(vec4<bool>(true, any(func_2(36796u).c.yy), false, true), global1[_wgslsmith_index_u32(var_2.x, 7u)], global1[_wgslsmith_index_u32(74569u, 7u)]));
    return var_4.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(166f, _wgslsmith_f_op_f32(1981f - _wgslsmith_f_op_f32(round(1299f)))), -964f, _wgslsmith_f_op_f32(-557f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1())))));
    var var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -357f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_0.x, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-909f, _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(select(651f, _wgslsmith_f_op_f32(f32(-1f) * -1279f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 23908u), 10u)])))), ~countOneBits(~vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)));
}

