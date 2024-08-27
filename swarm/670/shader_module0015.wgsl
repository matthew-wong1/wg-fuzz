struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<i32, 30>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1143f, _wgslsmith_f_op_f32(557f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1425f, 863f)) - _wgslsmith_div_f32(global1.a.x, var_0.a.x)))), vec2<f32>(-1205f, _wgslsmith_f_op_f32(exp2(global3.a.x)))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -234f))))), _wgslsmith_f_op_f32(-global3.a.x));
    global2 = array<i32, 30>();
    global2 = array<i32, 30>();
    return _wgslsmith_f_op_f32(global1.a.x - -1059f);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(902f - global3.a.x), 586f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, 757f)))), _wgslsmith_f_op_f32(select(101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(549f, arg_0.a.x)) - _wgslsmith_f_op_f32(func_3(max(vec3<i32>(global3.c, 17252i, 0i), vec3<i32>(global3.c, -2147483647i, -1i)), Struct_1(arg_2.a, vec3<bool>(arg_0.b.x, arg_0.b.x, false), global2[_wgslsmith_index_u32(38546u, 30u)], vec2<bool>(arg_0.b.x, true), vec4<u32>(0u, global3.e.x, 1u, 0u)), u_input.c.zxy))), arg_0.b.x)), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(max(-1954f, -656f)));
    global1 = Struct_1(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), arg_2.a.x, global3.a.x), !global1.b, -firstTrailingBit(reverseBits(~(-42445i))), !arg_0.d, global1.e);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) + -1212f), global3.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a.x)) - global1.a.x), global1.a.x, all(arg_0.b)))));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -898f))), arg_2.a.x, _wgslsmith_f_op_f32(round(-1050f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global3.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(-287f + -1212f), select(false, true, arg_1.x)))), _wgslsmith_div_vec4_f32(arg_0.a, global1.a)), !vec3<bool>(false, arg_1.x, false), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.e.x, 5841u) & arg_0.e.x, 7437u), 30u)] ^ (-2147483647i << (arg_2.e.x % 32u)), select(vec2<bool>(false, false & all(vec2<bool>(arg_0.d.x, true))), vec2<bool>(any(global1.b), -u_input.c.x >= _wgslsmith_mod_i32(u_input.c.x, global3.c)), !select(!global1.d, select(vec2<bool>(true, false), arg_0.d, arg_1.x), vec2<bool>(global1.d.x, false))), arg_2.e);
    let var_3 = arg_2;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x - -568f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(-1350f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.x))))), vec3<bool>(var_3.b.x, global1.e.x == global1.e.x, arg_1.x), 1i, vec2<bool>(!any(select(vec4<bool>(arg_2.d.x, true, arg_0.d.x, false), vec4<bool>(true, false, arg_2.b.x, true), vec4<bool>(var_3.d.x, arg_0.b.x, arg_1.x, var_2.d.x))), true), arg_2.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    global0 = !arg_0.d.x || any(vec4<bool>(!(arg_0.d.x | arg_1.x), global3.d.x, arg_1.x, ~global3.c == max(1i, global1.c)));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(sign(-781f)), _wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1842f, 1382f, global3.a.x, global3.a.x) - vec4<f32>(1297f, global3.a.x, global3.a.x, arg_0.a.x))))) - vec4<f32>(1733f, _wgslsmith_f_op_f32(global1.a.x + global3.a.x), _wgslsmith_f_op_f32(func_3(-u_input.c.ywy, Struct_1(vec4<f32>(1045f, global1.a.x, 264f, 482f), global3.b, global3.c, arg_1.zw, arg_0.e), abs(vec3<i32>(0i, 1i, 21364i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(floor(-1818f)))))), !(!vec3<bool>(true && global1.b.x, all(arg_1), true)), _wgslsmith_div_i32(global2[_wgslsmith_index_u32((_wgslsmith_clamp_u32(u_input.d, u_input.d, global1.e.x) & arg_0.e.x) ^ global3.e.x, 30u)], global1.c), global1.d, ~(~vec4<u32>(~52751u, arg_0.e.x, _wgslsmith_mod_u32(arg_0.e.x, 23648u), ~global1.e.x)));
    var var_0 = any(arg_0.d);
    var var_1 = -17175i;
    let var_2 = select(func_2(func_2(Struct_1(vec4<f32>(835f, 779f, -500f, 339f), arg_0.b, _wgslsmith_div_i32(arg_0.c, 9985i), vec2<bool>(global3.d.x, true), ~vec4<u32>(106554u, 0u, 4294967295u, 0u)), global1.b.yy, func_2(arg_0, select(global3.d, global1.d, vec2<bool>(global3.b.x, true)), Struct_1(global1.a, arg_0.b, 0i, vec2<bool>(global1.b.x, arg_1.x), global3.e))), arg_1.xw, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global3.a))), vec3<bool>(arg_0.c < 12306i, true, !arg_1.x), _wgslsmith_sub_i32(-1i, global1.c) ^ 7320i, arg_1.zw, max(arg_0.e >> (vec4<u32>(1u, global1.e.x, global3.e.x, u_input.e) % vec4<u32>(32u)), vec4<u32>(41913u, 61048u, 1u, 4294967295u)))).d.x, true, true);
    return arg_0.a.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    let var_0 = arg_1;
    global3 = Struct_1(vec4<f32>(-1443f, global3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -780f)) + _wgslsmith_f_op_f32(func_4(func_2(var_0, vec2<bool>(global3.d.x, true), Struct_1(global3.a, global1.b, 0i, vec2<bool>(global1.d.x, false), global1.e)), select(vec4<bool>(var_0.d.x, global1.d.x, true, arg_1.d.x), vec4<bool>(var_0.d.x, global3.d.x, false, false), vec4<bool>(var_0.b.x, global3.d.x, global1.b.x, true)))))), vec3<bool>(select(global2[_wgslsmith_index_u32(~u_input.b, 30u)] < reverseBits(arg_1.c), _wgslsmith_sub_u32(var_0.e.x, 0u) != ~0u, true), all(global1.d), true), -1i, vec2<bool>(global1.d.x, arg_1.d.x), var_0.e);
    global1 = Struct_1(vec4<f32>(-1145f, _wgslsmith_div_f32(1128f, -953f), func_2(arg_1, select(select(global3.b.zz, vec2<bool>(global1.b.x, false), false), vec2<bool>(true, global1.b.x), false | global3.d.x), Struct_1(vec4<f32>(-836f, global1.a.x, arg_1.a.x, global1.a.x), global1.b, 1i, global3.b.zz, ~var_0.e)).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(970f))) - 2005f)), global3.b, global1.c, vec2<bool>(!global1.b.x, any(func_2(Struct_1(global1.a, vec3<bool>(true, global3.d.x, var_0.b.x), -45947i, var_0.b.xy, vec4<u32>(59517u, global3.e.x, 11315u, var_0.e.x)), vec2<bool>(global1.d.x, arg_1.d.x), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -2740f, -1667f), global3.b, 43311i, global3.d, global3.e)).b) & (true || select(false, true, global1.d.x))), ~arg_1.e);
    global0 = true;
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.yz);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 891f, var_0.a.x, 1432f) - vec4<f32>(-357f, 139f, -1463f, var_0.a.x)), select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(global3.d.x, true, true, global3.d.x), vec4<bool>(global1.d.x, global3.d.x, false, true)))), func_2(var_0, arg_1.b.xz, var_0).a, !(!vec4<bool>(true, true, arg_1.b.x, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(global3.e.x, 30u)], Struct_1(global3.a, global3.b, 2147483647i, vec2<bool>(global3.b.x, false), global1.e), global2[_wgslsmith_index_u32(global3.e.x, 30u)])), global1.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.a, vec4<f32>(global3.a.x, -1206f, global1.a.x, -901f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-771f, global3.a.x, 535f, -782f) * vec4<f32>(global1.a.x, global1.a.x, 1000f, global3.a.x)))))), vec3<bool>(!global1.d.x, true, global1.d.x), -(u_input.a & (global3.c >> (27709u % 32u))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1031f, 814f, 1103f, 167f))), global1.b, ~_wgslsmith_sub_i32(u_input.a, global3.c), !global3.b.yx, firstTrailingBit(vec4<u32>(57704u, 9459u, 0u, 4294967295u))), select(func_2(Struct_1(vec4<f32>(global3.a.x, -477f, global3.a.x, -161f), global1.b, global3.c, vec2<bool>(global3.b.x, true), global1.e), !global1.d, func_2(Struct_1(global3.a, vec3<bool>(global3.b.x, false, global3.d.x), -51522i, vec2<bool>(global3.d.x, false), global1.e), global1.b.xz, Struct_1(global1.a, global1.b, u_input.a, vec2<bool>(global1.b.x, false), global3.e))).b.xx, select(select(vec2<bool>(global3.d.x, false), vec2<bool>(true, false), false), select(global1.b.yx, global3.d, global3.d.x), func_2(Struct_1(global3.a, vec3<bool>(true, false, global1.d.x), u_input.c.x, global3.b.yz, vec4<u32>(global1.e.x, 4294967295u, u_input.e, global3.e.x)), global3.d, Struct_1(global1.a, global3.b, 16968i, global1.d, vec4<u32>(14635u, 34612u, global1.e.x, 0u))).b.zz), global1.d.x), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(global3.a + global1.a), select(global1.b, vec3<bool>(false, global3.d.x, global3.d.x), global3.b), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), vec2<bool>(global1.d.x, global3.b.x), global3.e), select(!global1.d, !vec2<bool>(global3.d.x, global1.d.x), select(vec2<bool>(global1.b.x, global3.b.x), vec2<bool>(true, global1.d.x), true)), func_2(func_2(Struct_1(vec4<f32>(global1.a.x, 637f, global3.a.x, 2628f), vec3<bool>(global1.d.x, true, global1.b.x), 42414i, global3.d, global1.e), vec2<bool>(global1.b.x, global3.d.x), Struct_1(global3.a, global3.b, 0i, vec2<bool>(global1.b.x, true), vec4<u32>(global3.e.x, global1.e.x, global1.e.x, global3.e.x))), vec2<bool>(false, false), func_2(Struct_1(global3.a, vec3<bool>(true, false, false), 40358i, global3.d, vec4<u32>(global1.e.x, 4294967295u, global1.e.x, global3.e.x)), global3.d, Struct_1(vec4<f32>(976f, 924f, 1000f, -741f), vec3<bool>(true, true, true), 4648i, vec2<bool>(true, true), vec4<u32>(global3.e.x, 58742u, 4294967295u, u_input.e)))))).b.yz, ~global3.e);
    let var_1 = true;
    var var_2 = func_2(var_0, vec2<bool>(true, func_2(Struct_1(_wgslsmith_div_vec4_f32(global1.a, vec4<f32>(300f, var_0.a.x, -1106f, global3.a.x)), select(var_0.b, global1.b, vec3<bool>(false, global3.d.x, false)), -2147483647i, global3.b.yx, var_0.e), !select(vec2<bool>(false, var_0.d.x), global3.b.xy, var_1), var_0).b.x), func_2(var_0, global1.b.yx, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.x, global1.a.x, 252f, -1328f))), var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a, 16883i), u_input.c.zwx), select(global1.d, vec2<bool>(false, global1.b.x), global1.b.yy), countOneBits(global1.e)), vec2<bool>(var_0.d.x, global1.d.x || false), var_0)));
    var_2 = func_2(var_0, select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.d.x), vec2<bool>(true, true), var_0.b.x), var_2.d, (var_0.e.x <= 42146u) && true), vec2<bool>(false, any(vec4<bool>(global1.b.x, global1.b.x, false, var_2.d.x)) & var_0.d.x), func_2(var_0, vec2<bool>(select(false, true, var_0.d.x), all(global1.b)), Struct_1(vec4<f32>(global1.a.x, -645f, global3.a.x, 421f), global3.b, -global2[_wgslsmith_index_u32(global3.e.x, 30u)], select(vec2<bool>(global3.b.x, global3.d.x), vec2<bool>(true, var_1), var_2.d), global1.e & global1.e)).d.x), var_0);
    var var_3 = true;
    let var_4 = ~var_2.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_0.e, vec2<i32>(var_0.c, -29077i) >> (vec2<u32>(_wgslsmith_div_u32(~13639u, global3.e.x), _wgslsmith_mult_u32(~var_2.e.x, 1u)) % vec2<u32>(32u)));
}

