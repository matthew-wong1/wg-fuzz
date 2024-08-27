struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 13> = array<f32, 13>(1154f, 476f, 581f, 1547f, 540f, -448f, -389f, 1539f, 899f, -648f, -848f, 884f, 387f);

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(false), Struct_1(true), 1638f, vec4<i32>(-47720i, 0i, -21185i, 7950i)), vec4<bool>(true, false, true, true), Struct_1(false));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = global2.a;
    var var_1 = Struct_3(Struct_2(var_0.a, Struct_1(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<i32>(global0.a, u_input.a.x, 2147483647i, -26857i)), select(!(!select(vec4<bool>(false, global2.a.b.a, true, false), global2.b, vec4<bool>(false, global2.b.x, global2.c.a, true))), !vec4<bool>(!var_0.a.a, true & global2.c.a, select(false, true, var_0.a.a), false), all(vec2<bool>(true, any(global2.b.zy)))), Struct_1(global2.a.b.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f - _wgslsmith_div_f32(var_0.c, 503f))));
    global1 = array<f32, 13>();
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 * var_2)))))), _wgslsmith_f_op_f32(select(var_1.a.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + global2.a.c)))), global2.c.a)), true));
    return ~4294967295u;
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_3 {
    global2 = Struct_3(Struct_2(Struct_1(arg_1), Struct_1(true), _wgslsmith_f_op_f32(min(1533f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_3(), 13u)]))), ~global2.a.d), !(!vec4<bool>(true, true, global2.a.b.a, false)), Struct_1(arg_1));
    let var_0 = global2.a.b;
    let var_1 = Struct_1(any(select(!vec3<bool>(global2.c.a, global2.a.b.a, true), vec3<bool>(false, true, true), global2.b.xxz)) != global2.a.b.a);
    global0 = Struct_4(~(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, global2.a.d.x, -1i), global2.a.d.xwx)));
    global0 = Struct_4(6419i);
    return Struct_3(Struct_2(global2.c, Struct_1(false), global1[_wgslsmith_index_u32(func_3(), 13u)], global2.a.d), !select(!select(global2.b, global2.b, arg_1), global2.b, vec4<bool>(global1[_wgslsmith_index_u32(25520u, 13u)] < 899f, false, global2.b.x, false)), var_1);
}

fn func_1() -> u32 {
    global0 = Struct_4(reverseBits(1i));
    var var_0 = func_2(~(~_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 31263u, 50491u), vec4<u32>(31473u, 27010u, 1u, 0u)))), all(global2.b.wz));
    var var_1 = Struct_4(1i);
    global1 = array<f32, 13>();
    var var_2 = select(~max(min(~vec2<u32>(1u, 41572u), _wgslsmith_sub_vec2_u32(vec2<u32>(11794u, 4294967295u), vec2<u32>(1u, 22204u))), ~max(vec2<u32>(47123u, 1u), vec2<u32>(75046u, 1u))), firstLeadingBit(~vec2<u32>(9827u, 13651u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), select(global2.b.yz, vec2<bool>(global1[_wgslsmith_index_u32(37690u, 13u)] == _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 13u)]), select(var_1.a != 2147483647i, func_2(35393u, false).a.a.a, global2.a.b.a || var_0.b.x)), vec2<bool>(_wgslsmith_f_op_f32(-var_0.a.c) <= _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 13u)], -1230f)), !(var_0.a.b.a && false))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~var_2.x, countOneBits(var_2.x), abs(reverseBits(_wgslsmith_add_u32(1u, 54914u))), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.x, ~40144u), 0u)), ~((~vec4<u32>(1u, var_2.x, var_2.x, 0u) ^ countOneBits(vec4<u32>(var_2.x, var_2.x, var_2.x, 9231u))) << (vec4<u32>(~4294967295u, _wgslsmith_div_u32(0u, var_2.x), ~var_2.x, var_2.x << (16498u % 32u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    global1 = array<f32, 13>();
    global2 = Struct_3(global2.a, global2.b, Struct_1(global2.a.b.a));
    var var_0 = ~(~abs(~arg_1.yww));
    global1 = array<f32, 13>();
    global0 = Struct_4(~global0.a);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(~global0.a, func_4(func_1(), select(vec4<u32>(1u, 0u, 1u, 54114u), _wgslsmith_clamp_vec4_u32(vec4<u32>(30691u, 1u, 1u, 29289u), vec4<u32>(4123u, 20022u, 4294967295u, 4294967295u), vec4<u32>(4284u, 25550u, 1u, 40386u)), any(global2.b.zyz)) << (~min(vec4<u32>(4294967295u, 0u, 39861u, 4294967295u), vec4<u32>(97988u, 96365u, 1u, 48839u)) % vec4<u32>(32u))));
    let var_1 = all(!global2.b.zx);
    global1 = array<f32, 13>();
    global2 = Struct_3(func_2(1u, true).a, func_2(max(~(~1u), ~27663u), any(!func_2(0u, false).b.yyy)).b, func_2(min(abs(_wgslsmith_clamp_u32(4773u, 83743u, 1u)), ~1u), false == any(vec2<bool>(true, true))).c);
    global1 = array<f32, 13>();
    var var_2 = global2.a;
    global2 = func_2(~1u, true);
    global1 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.d.xwx, vec3<f32>(-948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.c - 2050f) + -162f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(853f))))), select(select(~vec3<u32>(38530u, 0u, 24774u), _wgslsmith_div_vec3_u32(vec3<u32>(18933u, 41418u, 0u), vec3<u32>(4294967295u, 3801u, 1u)), true), vec3<u32>(1u, 1u, 1u), !func_2(58089u, false).a.b.a) << (~(~reverseBits(vec3<u32>(4294967295u, 94342u, 132154u))) % vec3<u32>(32u)));
}

