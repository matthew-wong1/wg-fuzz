struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: array<vec3<f32>, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-2410f * -126f), 1289f, -642f, 324f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1515f, 350f, 1239f, 1292f) + vec4<f32>(-1649f, -1071f, 2627f, -852f)), vec4<f32>(1000f, 683f, -1506f, 170f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, -568f, 570f, -977f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-564f + _wgslsmith_f_op_f32(sign(222f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x))), 902f, _wgslsmith_f_op_f32(sign(138f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-861f, 403f, var_0.x, var_0.x), vec4<f32>(775f, var_0.x, var_0.x, var_0.x), false)), _wgslsmith_div_vec4_f32(vec4<f32>(1431f, var_0.x, 1186f, -1547f), vec4<f32>(var_0.x, -1610f, var_0.x, var_0.x)), !global0[_wgslsmith_index_u32(0u, 1u)]))))));
    var var_1 = Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(~(~61347u) | abs(u_input.a), 1u)], any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(59278u, 1u)])), all(select(!vec3<bool>(global0[_wgslsmith_index_u32(32295u, 1u)], global0[_wgslsmith_index_u32(58054u, 1u)], global0[_wgslsmith_index_u32(74150u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], false, false), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(3139u, 1u)]), false))), false), _wgslsmith_dot_vec2_i32(~u_input.b.yy, _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, 2147483647i), firstTrailingBit(u_input.b.xx), vec2<i32>(8490i, 26833i)) ^ (~vec2<i32>(u_input.b.x, -2147483647i) << ((vec2<u32>(u_input.d, u_input.c.x) << (vec2<u32>(1u, 59282u) % vec2<u32>(32u))) % vec2<u32>(32u)))), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), global0[_wgslsmith_index_u32(39874u, 1u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, false), vec3<bool>(false, false, global0[_wgslsmith_index_u32(47371u, 1u)]), global0[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(27769u, 1u)])), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(58137u, 1u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 1u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, global0[_wgslsmith_index_u32(23507u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(49242u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), global0[_wgslsmith_index_u32(21978u, 1u)]), vec3<bool>(false, true, true)), false), select(vec3<bool>(true, true, 1i >= u_input.b.x), !select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 1u)])), vec3<bool>(global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 1u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 1u)] | true)), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(31655u, 1u)], true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)], false)), select(select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], false, true), vec3<bool>(true, false, true)), vec3<bool>(false, global0[_wgslsmith_index_u32(30038u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(17143u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(45089u, 1u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, global0[_wgslsmith_index_u32(44879u, 1u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 1u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], false, true), vec3<bool>(true, false, true)), !vec3<bool>(global0[_wgslsmith_index_u32(34689u, 1u)], false, global0[_wgslsmith_index_u32(36466u, 1u)])))));
    let var_2 = Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(u_input.d, u_input.a, u_input.a)), 1u)], u_input.c.x >= 1u, true, !(any(vec4<bool>(false, true, true, var_1.a.x)) || (var_0.x >= 154f))), 11081i, vec3<bool>(select(select(false, false, var_1.c.x), true, var_1.c.x) & true, false, false));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 163f, var_0.x, -783f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 334f, -797f, var_0.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(-193f, -1172f, -1245f, -403f), vec4<f32>(var_0.x, 865f, var_0.x, var_0.x))), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, 1307f, var_0.x, -1881f)))))));
    return vec4<bool>(any(select(var_1.a, var_1.a, select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], false, var_1.a.x, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true, true, false), select(var_2.a, vec4<bool>(global0[_wgslsmith_index_u32(1714u, 1u)], true, false, var_1.c.x), var_1.a)))), all(vec2<bool>(true, true)), !select(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 20433u, u_input.c.x, u_input.c.x), vec4<u32>(87840u, u_input.a, 4294967295u, 4294967295u)), 1u)], all(var_2.a), var_1.c.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(u_input.c >> (~vec3<u32>(0u, u_input.c.x, 59562u) % vec3<u32>(32u))), vec3<u32>(min(1u, 1u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, u_input.d, 0u, 59167u), vec4<u32>(11148u, 39411u, 1u, 107435u)), _wgslsmith_div_vec4_u32(vec4<u32>(16373u, 1u, 1584u, 1u), vec4<u32>(u_input.d, 52047u, u_input.d, 27841u))), 1u)), 1u)]);
}

fn func_2() -> bool {
    global1 = array<vec3<f32>, 31>();
    var var_0 = Struct_1(vec4<bool>(false, any(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)], false, global0[_wgslsmith_index_u32(u_input.a, 1u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)]), func_3())), any(!vec3<bool>(false, global0[_wgslsmith_index_u32(81934u, 1u)], true)) | !(u_input.b.x <= u_input.b.x), false), i32(-1i) * -select(~u_input.b.x, u_input.b.x >> (0u % 32u), false), select(vec3<bool>(-2147483647i >= _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), false, func_3().x), vec3<bool>(all(vec3<bool>(false, false, false)) || all(vec4<bool>(true, global0[_wgslsmith_index_u32(4559u, 1u)], true, global0[_wgslsmith_index_u32(1u, 1u)])), true, any(func_3())), global0[_wgslsmith_index_u32(0u, 1u)]));
    return global0[_wgslsmith_index_u32(u_input.a, 1u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    global0 = array<bool, 1>();
    var var_0 = Struct_1(vec4<bool>(func_2() || all(arg_1.c), false, true, true), -countOneBits(2147483647i), arg_2.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f - -275f)) - -1000f))));
    var var_2 = select(select(arg_1.c, !vec3<bool>(true || arg_3.x, global0[_wgslsmith_index_u32(u_input.a & 15141u, 1u)], true), any(vec2<bool>(all(var_0.a.wyx), any(arg_3)))), func_3().zwy, global0[_wgslsmith_index_u32(u_input.a | firstLeadingBit(~u_input.d), 1u)] & !(any(vec2<bool>(var_0.a.x, true)) & true));
    var_1 = _wgslsmith_f_op_f32(-1267f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1757f)))), -517f));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(909f)), -1000f))))), 769f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1728f, 1764f, -184f))))))) - _wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(abs(~u_input.a), 31u)], vec3<f32>(-532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f + -427f)), -1000f), all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 1u)], false, global0[_wgslsmith_index_u32(62965u, 1u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), 47121u > u_input.d)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_1(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(1u, 1u)]), global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), 42259i, vec3<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true)), global0[_wgslsmith_index_u32(~u_input.d, 1u)])), Struct_1(select(vec4<bool>(global0[_wgslsmith_index_u32(1509u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)]), !vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(9554u, 1u)]), true | global0[_wgslsmith_index_u32(1u, 1u)]), abs(-9246i) | _wgslsmith_add_i32(u_input.b.x, u_input.b.x), select(!vec3<bool>(global0[_wgslsmith_index_u32(51972u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4552u, u_input.d, 1u)), 1u)])), vec2<bool>(true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_f_op_f32(f32(-1f) * -1181f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -519f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1535f + 891f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(410f))))));
    let var_1 = Struct_1(vec4<bool>(var_0.x < 834f, any(select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(64455u, 1u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 1u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)], false)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], false, false, true))), any(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true, global0[_wgslsmith_index_u32(21787u, 1u)])), func_3().x), 0i, select(vec3<bool>(true, true, true), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)]), true)), true, any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], false))), vec3<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 1u)] || !global0[_wgslsmith_index_u32(50383u, 1u)], _wgslsmith_f_op_f32(min(-806f, var_0.x)) <= _wgslsmith_f_op_f32(var_0.x - var_0.x), !(true == global0[_wgslsmith_index_u32(u_input.d, 1u)]))));
    global1 = array<vec3<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(87211u, _wgslsmith_clamp_u32(~4294967295u, u_input.d, max(u_input.d, u_input.a))), abs(~_wgslsmith_div_vec2_u32(u_input.c.xz, u_input.c.yx))), 21190i, -select(vec4<i32>(var_1.b, u_input.b.x, 1i, 1i), -(~vec4<i32>(-10768i, var_1.b, var_1.b, 1i)), true));
}

