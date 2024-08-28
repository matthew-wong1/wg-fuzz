struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false);

var<private> global1: array<i32, 10> = array<i32, 10>(33977i, 3177i, 2147483647i, -1i, 1i, 9179i, -24392i, 2147483647i, 1i, 0i);

var<private> global2: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(2484f, 497f, -1005f, -145f), vec4<f32>(-1663f, -354f, 1000f, -934f), vec4<f32>(-757f, -719f, -750f, 355f));

var<private> global3: Struct_2 = Struct_2(false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = Struct_1(select(vec4<bool>(global0.a, global3.a, all(!vec2<bool>(global0.a, global0.a)), !(!global3.a)), vec4<bool>(any(!vec4<bool>(global0.a, global0.a, true, true)), true, false, false), select(vec4<bool>(true, true, global0.a, global3.a), vec4<bool>(false, true, global0.a, true), vec4<bool>(false, false, true, !global0.a))), !vec2<bool>(false, u_input.b.x < 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-498f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1389f, 1472f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-502f, -1043f))))), _wgslsmith_f_op_f32(-1258f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1740f, global0.a)))))));
    return firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(198u, 1u, u_input.e) & vec3<u32>(arg_1.x, 0u, u_input.e))), vec3<u32>(~arg_0, _wgslsmith_dot_vec4_u32(max(vec4<u32>(29063u, 71408u, 29481u, u_input.e), vec4<u32>(0u, 49617u, u_input.e, 26893u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 4453u, 55608u, arg_0), vec4<u32>(1u, 4662u, arg_0, 32944u))), 4294967295u), ~vec3<u32>(reverseBits(u_input.e), ~1u, arg_1.x | 81729u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    global1 = array<i32, 10>();
    let var_0 = false;
    let var_1 = arg_0.c.x;
    let var_2 = _wgslsmith_div_i32((global1[_wgslsmith_index_u32(~4294967295u, 10u)] ^ ~(~global1[_wgslsmith_index_u32(4294967295u, 10u)])) >> (u_input.e % 32u), abs(firstTrailingBit(~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.e, 10u)], global1[_wgslsmith_index_u32(34553u, 10u)]))));
    global0 = Struct_2(~(~u_input.e) >= firstLeadingBit(~(~u_input.e)));
    return Struct_3(func_3(u_input.e, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(4294967295u, 13891u)))), Struct_2(true), Struct_2(any(select(!vec4<bool>(global0.a, var_0, true, true), select(arg_0.a, vec4<bool>(true, false, global3.a, var_0), global0.a), arg_0.a))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = -1309f;
    global1 = array<i32, 10>();
    let var_1 = vec2<u32>(countOneBits(~_wgslsmith_clamp_u32(1568u, ~75968u, min(56494u, u_input.e))), ~arg_0);
    let var_2 = Struct_1(select(vec4<bool>(true | global0.a, global3.a, global3.a, !global0.a), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, global0.a, false), !global3.a), !vec4<bool>(all(vec2<bool>(false, true)), global0.a == global0.a, false, global3.a)), !select(vec2<bool>(arg_0 > 0u, any(vec4<bool>(global3.a, global3.a, false, global0.a))), !vec2<bool>(global0.a, false), !vec2<bool>(false, global3.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1411f, -291f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(1622f, var_0)))))))), var_0);
    global0 = Struct_2(var_2.a.x);
    return func_2(Struct_1(select(select(!var_2.a, vec4<bool>(true, global3.a, false, global3.a), all(vec2<bool>(global3.a, true))), !select(var_2.a, vec4<bool>(global3.a, false, true, true), true), var_2.a), vec2<bool>(!var_2.b.x, global3.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * var_2.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1000f)) - _wgslsmith_f_op_vec2_f32(-var_2.c))), _wgslsmith_f_op_f32(-var_0)), 1000f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> vec2<i32> {
    global2 = array<vec4<f32>, 3>();
    let var_0 = select(u_input.c.zz, (vec2<i32>(u_input.d, 49502i) & _wgslsmith_clamp_vec2_i32(u_input.b.xz, firstTrailingBit(vec2<i32>(-43909i, -1i)), firstLeadingBit(vec2<i32>(-34726i, u_input.b.x)))) & vec2<i32>(_wgslsmith_div_i32(-2102i, _wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.e, 10u)])), global1[_wgslsmith_index_u32(0u, 10u)]), !(!(!vec2<bool>(arg_3.a, arg_2.c.a))));
    global1 = array<i32, 10>();
    var var_1 = select(vec4<bool>(abs(u_input.c.x) != (-2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, arg_2.a.x, 0u, arg_0.a.x), vec4<u32>(arg_0.a.x, 1u, 0u, arg_2.a.x)) % 32u)), func_2(Struct_1(vec4<bool>(false, true, global0.a, true), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 611f), vec2<f32>(1291f, 792f))), _wgslsmith_f_op_f32(-325f - -600f)), 1054f).c.a, false, true), vec4<bool>(arg_1.a, true, true, true & global0.a), select(~arg_2.a.x, _wgslsmith_sub_u32(firstTrailingBit(u_input.e), _wgslsmith_dot_vec2_u32(arg_2.a.zz, vec2<u32>(57417u, 22352u))), _wgslsmith_sub_u32(1u, arg_0.a.x) != arg_2.a.x) == u_input.e);
    var_1 = select(select(!(!select(vec4<bool>(arg_3.a, true, false, arg_1.a), vec4<bool>(global0.a, arg_2.c.a, false, false), var_1.x)), vec4<bool>(var_1.x, true, true, !global0.a && true), true), vec4<bool>(!select(true, arg_0.b.a, func_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(arg_0.c.a, arg_1.a), vec2<f32>(242f, -278f), 515f), 1439f).c.a), func_2(Struct_1(select(vec4<bool>(true, true, arg_3.a, false), vec4<bool>(var_1.x, false, arg_1.a, true), vec4<bool>(true, arg_0.b.a, arg_0.b.a, true)), var_1.xz, vec2<f32>(424f, 950f), -585f), -715f).b.a, arg_0.b.a, true), true);
    return ~min(~vec2<i32>(u_input.c.x, 2147483647i) >> (arg_2.a.zx % vec2<u32>(32u)), max(vec2<i32>(-1i) * -vec2<i32>(-46532i, global1[_wgslsmith_index_u32(u_input.e, 10u)]), ~u_input.b.zz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.e, 83089u, 4294967295u), select(vec3<u32>(u_input.e, 0u, 0u), vec3<u32>(u_input.e, u_input.e, u_input.e), false)) >> (vec3<u32>(34074u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, u_input.e), vec4<u32>(1u, u_input.e, 4294967295u, 47637u)), 1u) % vec3<u32>(32u)), Struct_2(-1i > _wgslsmith_add_i32(global1[_wgslsmith_index_u32(71158u, 10u)], 0i)), Struct_2(false && global3.a)), Struct_2(global3.a), func_1(79187u), Struct_2(true));
    var_0 = abs(max(vec2<i32>(u_input.b.x, 1i), func_4(func_1(6291u), func_1(u_input.e).c, Struct_3(vec3<u32>(u_input.e, u_input.e, 0u), Struct_2(global0.a), Struct_2(false)), func_1(4294967295u).c))) & u_input.b.xz;
    let var_1 = Struct_2(any(select(vec3<bool>(false, true, global3.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(global0.a, global0.a, global0.a), global3.a)), true)));
    let var_2 = Struct_1(select(vec4<bool>(0u != _wgslsmith_div_u32(u_input.e, 43272u), true, func_1(~u_input.e).c.a, false), select(select(select(vec4<bool>(true, global3.a, global0.a, false), vec4<bool>(true, true, global3.a, true), vec4<bool>(var_1.a, global0.a, false, global3.a)), vec4<bool>(true, global3.a, global3.a, global0.a), vec4<bool>(var_1.a, false, global0.a, true)), select(vec4<bool>(global0.a, global3.a, var_1.a, global0.a), select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.a, true, false, var_1.a), var_1.a), vec4<bool>(global0.a, global3.a, true, false)), true), !select(select(vec4<bool>(global0.a, global0.a, true, true), vec4<bool>(false, var_1.a, true, true), var_1.a), vec4<bool>(global3.a, global0.a, global0.a, true), true)), vec2<bool>(false, var_1.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, 467f) - vec2<f32>(611f, 1253f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1414f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-822f, 277f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2640f, -232f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-442f, 999f), vec2<f32>(915f, 345f)))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2326f * -1000f) - 1000f), _wgslsmith_f_op_f32(-1f)));
    var var_3 = ~countOneBits(~u_input.c);
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(~1u), select(~u_input.e, u_input.e, true)));
}

