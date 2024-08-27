struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<u32>(18982u, 9893u), 2147483647i, 27795u, -1096f, vec2<u32>(26928u, 4294967295u)));

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<u32>(47447u, 74399u), 2147483647i, 46371u, -237f, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(45822u, 4294967295u), 1i, 0u, 2296f, vec2<u32>(30064u, 70854u)), Struct_1(vec2<u32>(4294967295u, 47773u), -104781i, 0u, 1063f, vec2<u32>(105159u, 8959u)), Struct_1(vec2<u32>(26586u, 4294967295u), i32(-2147483648), 10073u, -805f, vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(5015u, 20015u), 1i, 59087u, -116f, vec2<u32>(74921u, 53305u)), Struct_1(vec2<u32>(29229u, 65229u), 3301i, 0u, -1000f, vec2<u32>(97428u, 0u)), Struct_1(vec2<u32>(0u, 24776u), 1i, 10324u, -455f, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(1054u, 38922u), 6712i, 0u, -695f, vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(3183u, 0u), 2147483647i, 1u, -116f, vec2<u32>(1601u, 17423u)), Struct_1(vec2<u32>(33647u, 1u), 0i, 4294967295u, -235f, vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(103783u, 4294967295u), -1i, 1u, -302f, vec2<u32>(7318u, 4294967295u)), Struct_1(vec2<u32>(31026u, 1u), 19358i, 0u, -230f, vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(8812u, 29561u), 2147483647i, 23439u, -233f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(1u, 0u), -3498i, 30863u, 568f, vec2<u32>(1u, 61817u)), Struct_1(vec2<u32>(4294967295u, 20u), i32(-2147483648), 11883u, -124f, vec2<u32>(0u, 38139u)), Struct_1(vec2<u32>(2663u, 37070u), 21436i, 24934u, 103f, vec2<u32>(15605u, 0u)), Struct_1(vec2<u32>(27706u, 4294967295u), -8275i, 25294u, 815f, vec2<u32>(0u, 24009u)), Struct_1(vec2<u32>(0u, 49460u), 2147483647i, 0u, 1000f, vec2<u32>(4294967295u, 36493u)), Struct_1(vec2<u32>(1u, 1134u), 2147483647i, 4294967295u, -815f, vec2<u32>(0u, 83681u)), Struct_1(vec2<u32>(4294967295u, 3644u), -2694i, 18821u, -763f, vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(0u, 13926u), -1i, 1u, -883f, vec2<u32>(4294967295u, 33358u)), Struct_1(vec2<u32>(108816u, 4294967295u), 1i, 0u, -357f, vec2<u32>(81443u, 49457u)), Struct_1(vec2<u32>(0u, 0u), 25587i, 4294967295u, -815f, vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(20267u, 15994u), -1i, 26876u, 2860f, vec2<u32>(82392u, 0u)), Struct_1(vec2<u32>(98845u, 67825u), 2147483647i, 0u, 770f, vec2<u32>(0u, 5049u)));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 48388u), 7814i, 63037u, -211f, vec2<u32>(4294967295u, 1u));

var<private> global3: array<vec3<u32>, 21>;

var<private> global4: Struct_1 = Struct_1(vec2<u32>(4294967295u, 35032u), 1i, 35444u, 309f, vec2<u32>(0u, 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(global4.d)), global4.d);
    var var_1 = global0.b.d;
    var var_2 = -1879f;
    global3 = array<vec3<u32>, 21>();
    var var_3 = ~(-24006i);
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = global0.a.x;
    let var_1 = vec4<bool>(false, false, any(global0.a), !all(vec4<bool>(global0.a.x, !global0.a.x, true, func_3())));
    let var_2 = ~((-2147483647i & _wgslsmith_sub_i32(global2.b, _wgslsmith_sub_i32(-1i, global0.b.b))) >> (4294967295u % 32u));
    let var_3 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.e.x, 36910u, global0.b.e.x, u_input.c), vec4<u32>(1u, global4.e.x, u_input.c, 104292u)) ^ _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(u_input.c, 21u)], global3[_wgslsmith_index_u32(global2.c, 21u)])), global4.a), 0i, firstTrailingBit(u_input.c) << (~global4.e.x % 32u), _wgslsmith_f_op_f32(-global4.d), ((global4.e | global2.e) ^ ~global2.a) | (~vec2<u32>(3275u, 4294967295u) << (vec2<u32>(_wgslsmith_mod_u32(2522u, 1u), global4.a.x << (4294967295u % 32u)) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-378f, -410f))));
    return Struct_2(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.yzy, any(global0.a)), select(vec3<bool>(!global0.a.x, true, false), select(vec3<bool>(true, true, true), global0.a, true), select(vec3<bool>(false, var_1.x, false), global0.a, !var_1.x)), !select(select(true, var_1.x, true), global0.a.x, false)), global0.b);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> u32 {
    let var_0 = -u_input.d.xz;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-525f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.d)))))));
    global3 = array<vec3<u32>, 21>();
    global4 = Struct_1(vec2<u32>(~arg_2.x, ~((global4.c & 1u) ^ ~15902u)), _wgslsmith_mod_i32(1327i, global2.b), _wgslsmith_dot_vec4_u32(arg_2, arg_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-195f)))), vec2<u32>(1u, _wgslsmith_clamp_u32(17898u, global2.e.x, ~(~global4.e.x))));
    var var_2 = global1[_wgslsmith_index_u32(global2.a.x, 25u)];
    return max(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.b.a, vec2<u32>(1u, 1u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 16378u), countOneBits(4294967295u), 68070u)), 4294967295u));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.xy >> (vec2<u32>(select(arg_0.x, ~1u, 25039i >= u_input.b), ~13978u & _wgslsmith_div_u32(global2.c, 77204u)) % vec2<u32>(32u)), -1i, u_input.c, global4.d, vec2<u32>(func_4(func_2(), _wgslsmith_div_i32(min(global0.b.b, -1i), global2.b), vec4<u32>(~4294967295u, global4.a.x, firstLeadingBit(global4.a.x), 35448u)), min(max(abs(u_input.c), 1u), firstLeadingBit(102496u))));
    let var_1 = Struct_2(select(vec3<bool>(global0.a.x, all(vec4<bool>(true, true, true, true)), global4.d < _wgslsmith_f_op_f32(trunc(global4.d))), global0.a, !(_wgslsmith_mod_i32(var_0.b, 2147483647i) <= _wgslsmith_mod_i32(global0.b.b, -25391i))), func_2().b);
    var var_2 = ~0u;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.b.d * global0.b.d), _wgslsmith_f_op_f32(min(1889f, var_0.d)), _wgslsmith_f_op_f32(442f + -941f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1311f, global4.d, var_0.d), vec3<f32>(var_0.d, global4.d, var_0.d))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(831f, global2.d, 1303f))))));
    var var_4 = func_2().b;
    return Struct_1(~arg_0.xy, ~(_wgslsmith_clamp_i32(~global0.b.b, 58582i, u_input.b) >> (firstLeadingBit(global2.c) % 32u)), abs(1u << ((16050u << (global4.a.x % 32u)) % 32u)), _wgslsmith_f_op_f32(global0.b.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.d))), ~global4.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    let var_0 = Struct_2(select(select(!select(global0.a, vec3<bool>(false, true, false), false), select(select(vec3<bool>(global0.a.x, false, global0.a.x), vec3<bool>(global0.a.x, true, true), vec3<bool>(global0.a.x, global0.a.x, true)), !vec3<bool>(true, global0.a.x, false), true), true), global0.a, (!global0.a.x || (global0.a.x || global0.a.x)) & all(!global0.a.xy)), func_1(vec3<u32>(countOneBits(u_input.c & global0.b.a.x), _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(17541u, global4.a.x), 21u)], abs(vec3<u32>(46449u, 39317u, global0.b.e.x))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global2.c, u_input.c, 4294967295u), 33569u))));
    let var_1 = Struct_2(select(!global0.a, !var_0.a, var_0.a), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(global3[_wgslsmith_index_u32(4294967295u, 21u)] << (vec3<u32>(24943u, 19939u, var_0.b.a.x) % vec3<u32>(32u))), firstTrailingBit(global3[_wgslsmith_index_u32(max(4294967295u, 22661u), 21u)])), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.a.x, u_input.c), global0.b.a), max(_wgslsmith_sub_u32(0u, 0u), global0.b.e.x))), 25u)]);
    let var_2 = vec2<bool>(all(var_0.a.yz), true);
    var var_3 = Struct_2(!(!var_0.a), func_1(select(vec3<u32>(var_0.b.c, 68514u, 4294967295u) ^ vec3<u32>(u_input.c, global2.a.x, global4.e.x), ~_wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(1u, 21u)], vec3<u32>(1u, var_1.b.e.x, 18766u), global3[_wgslsmith_index_u32(var_1.b.a.x, 21u)]), !(!global0.a.x))));
    let var_4 = true;
    let var_5 = select(!select(vec4<bool>(true, true, all(vec4<bool>(var_0.a.x, true, var_2.x, false)), select(false, true, var_1.a.x)), vec4<bool>(!var_3.a.x, var_4 && var_3.a.x, var_1.a.x, true), !select(vec4<bool>(global0.a.x, true, true, true), vec4<bool>(true, var_0.a.x, var_2.x, false), vec4<bool>(var_4, false, false, true))), !(!select(vec4<bool>(false, true, global0.a.x, var_1.a.x), vec4<bool>(var_0.a.x, var_3.a.x, var_4, var_1.a.x), var_3.a.x)), all(vec4<bool>(all(select(var_1.a.zy, vec2<bool>(true, false), vec2<bool>(var_1.a.x, var_4))), false, var_2.x, any(func_2().a.xz))));
    global1 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-(firstTrailingBit(global2.b) & -_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, u_input.b), u_input.d.yy)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global4.d)), _wgslsmith_div_f32(var_3.b.d, -274f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-957f)))), -1328f, var_1.a.x)));
}

