struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec2<u32>(4294967295u, 0u));

var<private> global1: array<f32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = -max(u_input.b.x, max(_wgslsmith_clamp_i32(~7732i, -27745i, u_input.b.x | -1i), -39087i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1501f))) != global1[_wgslsmith_index_u32(9528u >> (max(0u, 0u) % 32u), 19u)], vec2<u32>(arg_0.b.x, ~reverseBits(_wgslsmith_add_u32(u_input.c.x, 39109u))));
    var var_2 = ~((~reverseBits(vec4<u32>(1u, u_input.a.x, 60688u, 0u)) & vec4<u32>(1u, firstTrailingBit(arg_0.b.x), 1u, 43163u)) ^ ~vec4<u32>(_wgslsmith_mod_u32(var_1.b.x, arg_0.b.x), countOneBits(55878u), 1u, var_1.b.x));
    global0 = arg_0;
    global1 = array<f32, 19>();
    return 745f;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_2, Struct_1(false, _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 30133u), u_input.a >> (global0.b % vec2<u32>(32u)))))), global1[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~abs(7379u)), 19u)]));
    let var_1 = select(select(select(select(!vec3<bool>(true, global0.a, true), vec3<bool>(false, global0.a, global0.a), !vec3<bool>(global0.a, arg_2.a, arg_2.a)), !vec3<bool>(arg_2.a, arg_2.a, global0.a), vec3<bool>(global0.a, arg_2.a & false, arg_2.a || arg_2.a)), !(!select(vec3<bool>(global0.a, global0.a, arg_2.a), vec3<bool>(arg_2.a, global0.a, arg_2.a), vec3<bool>(global0.a, false, false))), select(select(!vec3<bool>(global0.a, true, global0.a), !vec3<bool>(arg_2.a, true, false), select(arg_2.a, global0.a, global0.a)), vec3<bool>(!global0.a, !arg_2.a, u_input.b.x >= 2147483647i), select(true, false, true))), vec3<bool>(false, arg_2.a, false), select(!(!vec3<bool>(global0.a, arg_2.a, false)), vec3<bool>(global0.a, global0.a, all(vec2<bool>(true, true))), all(!(!vec2<bool>(false, global0.a)))));
    var var_2 = select(var_1, !(!select(select(var_1, var_1, vec3<bool>(false, var_1.x, global0.a)), !var_1, !var_1.x)), vec3<bool>(all(var_1.zz), true, all(!vec4<bool>(global0.a, false, global0.a, false))));
    global1 = array<f32, 19>();
    var_2 = vec3<bool>(all(vec4<bool>(all(vec3<bool>(var_2.x, var_2.x, arg_2.a)), arg_2.a, !(!arg_2.a), all(!vec3<bool>(true, arg_2.a, global0.a)))), var_2.x | select(!any(vec4<bool>(var_1.x, false, false, true)), global0.a && all(var_2.xy), var_1.x), arg_2.a);
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = firstTrailingBit(vec2<i32>(-2147483647i, u_input.b.x));
    var var_1 = 4294967295u << ((arg_0.b.x ^ 0u) % 32u);
    let var_2 = func_2(_wgslsmith_add_i32(-32946i, _wgslsmith_dot_vec2_i32(u_input.b.ww, vec2<i32>(1i, 2147483647i))), select(~vec4<u32>(36332u, 0u, 0u, global0.b.x) | ~max(vec4<u32>(arg_3.b.x, 4294967295u, 1u, arg_0.b.x), vec4<u32>(0u, arg_3.b.x, arg_3.b.x, arg_1)), _wgslsmith_add_vec4_u32(min(vec4<u32>(arg_3.b.x, arg_3.b.x, 32128u, arg_1), vec4<u32>(46444u, 0u, 1677u, global0.b.x)) << (vec4<u32>(108611u, 40890u, 26766u, arg_3.b.x) % vec4<u32>(32u)), vec4<u32>(~4294967295u, arg_1 | arg_1, ~1u, _wgslsmith_add_u32(1u, 0u))), false), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(var_0.x, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 5424i), vec2<i32>(var_0.x, u_input.b.x)), firstLeadingBit(-12390i)), vec4<i32>(select(3188i, 30936i, arg_0.a), -80726i, -var_0.x, u_input.b.x)), vec4<u32>(~12845u, u_input.a.x, ~_wgslsmith_sub_u32(116718u, arg_1), func_2(71827i, vec4<u32>(0u, 14807u, arg_1, arg_3.b.x), Struct_1(global0.a, vec2<u32>(arg_0.b.x, 10538u))).b.x), arg_3));
    let var_3 = Struct_1(select(func_2(-2147483647i, vec4<u32>(4294967295u, 45037u, 31505u, 0u) & max(vec4<u32>(18468u, 0u, 4294967295u, 30528u), vec4<u32>(u_input.c.x, arg_3.b.x, global0.b.x, arg_0.b.x)), Struct_1(false, u_input.c.zx)).a, true, arg_0.a), max(vec2<u32>(4294967295u, _wgslsmith_mod_u32(~var_2.b.x, 4924u)), vec2<u32>(~countOneBits(4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(68626u, arg_3.b.x, 4294967295u), vec3<u32>(arg_0.b.x, 53308u, 32753u)))));
    var var_4 = u_input.b;
    return (~17286u >> (max(4294967295u, ~arg_3.b.x) % 32u)) < 4294967295u;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = !select(vec4<bool>((true | arg_2.a) && true, true || (arg_1 == global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), any(vec3<bool>(arg_2.a, true, true)) & false, true), vec4<bool>(arg_0.x == _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 19u)] * 304f), any(vec2<bool>(arg_2.a, global0.a)), !all(vec2<bool>(false, global0.a)), false), vec4<bool>(func_4(func_2(73170i, vec4<u32>(arg_2.b.x, 0u, 22762u, u_input.a.x), arg_2), 14144u, _wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(932f, global1[_wgslsmith_index_u32(global0.b.x, 19u)], arg_1, global1[_wgslsmith_index_u32(46147u, 19u)])), Struct_1(arg_2.a, vec2<u32>(0u, 3875u))), true, true, !arg_2.a));
    var_0 = vec4<bool>(!(!(!any(vec4<bool>(false, true, global0.a, true)))), (global0.a || var_0.x) & ((~u_input.c.x ^ _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4333u, global0.b.x, 54926u))) >= ~u_input.c.x), any(!select(vec4<bool>(false, arg_2.a, false, true), vec4<bool>(false, false, false, false), false)) != true, func_4(arg_2, firstLeadingBit(4114u), arg_0, arg_2));
    var var_1 = _wgslsmith_div_u32(global0.b.x, _wgslsmith_clamp_u32(global0.b.x, reverseBits(0u), 9622u << (global0.b.x % 32u))) ^ global0.b.x;
    let var_2 = (~(~(~vec4<u32>(u_input.a.x, 30275u, u_input.a.x, 36637u))) << (firstLeadingBit(~(vec4<u32>(14175u, 47715u, u_input.c.x, 45025u) << (vec4<u32>(3709u, 27503u, global0.b.x, u_input.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u))) | ~(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, global0.b.x, 4294967295u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, global0.b.x, u_input.c.x), abs(vec4<u32>(0u, 7397u, arg_2.b.x, 1u))) % vec4<u32>(32u)));
    var_1 = 0u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-907f * arg_1))), _wgslsmith_f_op_f32(-arg_1))));
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(~arg_1, _wgslsmith_dot_vec2_i32(select(reverseBits(vec2<i32>(u_input.b.x, arg_1)), ~u_input.b.zx, !vec2<bool>(true, global0.a)), vec2<i32>(361i, 0i) << (~u_input.c.xx % vec2<u32>(32u)))), i32(-1i) * -45893i);
    global1 = array<f32, 19>();
    var_0 = 23982i;
    let var_1 = Struct_1(global0.a, vec2<u32>(~_wgslsmith_dot_vec2_u32(~u_input.a, ~global0.b), 1u | ~firstTrailingBit(global0.b.x)));
    var var_2 = 0i;
    return func_2(arg_1, reverseBits(~vec4<u32>(85775u, 4294967295u, 1u, global0.b.x)) & ~vec4<u32>(_wgslsmith_add_u32(4294967295u, global0.b.x), _wgslsmith_add_u32(var_1.b.x, global0.b.x), u_input.c.x, global0.b.x), var_1);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = arg_2;
    var var_1 = arg_2;
    global1 = array<f32, 19>();
    let var_2 = arg_2;
    var_1 = Struct_1(var_0.a, vec2<u32>(func_2(2147483647i, ~vec4<u32>(4294967295u, arg_2.b.x, 1u, 67825u), func_5(vec2<f32>(390f, -374f), 0i, global1[_wgslsmith_index_u32(0u, 19u)])).b.x, var_1.b.x << (arg_2.b.x % 32u)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_1.b.x, u_input.c.x) & vec3<u32>(11709u, 4294967295u, var_2.b.x), u_input.c ^ vec3<u32>(global0.b.x, var_2.b.x, 26605u)), ~(4294967295u >> (var_2.b.x % 32u))) % vec2<u32>(32u)));
    return vec4<bool>(!func_2(u_input.b.x, vec4<u32>(8387u, 4294967295u, abs(global0.b.x), 0u), arg_2).a, !(!all(vec3<bool>(var_1.a, var_1.a, arg_2.a))), !arg_0.a, !((select(false, true, global0.a) != false) || all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, var_0.a), vec4<bool>(false, false, false, arg_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 19>();
    let var_0 = !func_6(func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], global1[_wgslsmith_index_u32(u_input.c.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], -1335f), 638f, Struct_1(true, u_input.a))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)]))), true || global0.a)), _wgslsmith_dot_vec3_i32(u_input.b.wyw, vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(33645u, 70811u), 19u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 19u)]))), u_input.b.zy, func_2(~(u_input.b.x & -17584i), _wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, u_input.c.x, global0.b.x, 0u), vec4<u32>(u_input.a.x, 42142u, u_input.a.x, 1u)), firstTrailingBit(vec4<u32>(u_input.c.x, global0.b.x, u_input.c.x, global0.b.x))), Struct_1(true, func_2(-26929i, vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u), Struct_1(global0.a, global0.b)).b)));
    var var_1 = u_input.a.x;
    var var_2 = 19678u;
    let var_3 = Struct_1(global0.a, vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, 1u), abs(func_2(2147483647i, vec4<u32>(0u, u_input.a.x, 79963u, u_input.c.x), Struct_1(var_0.x, vec2<u32>(global0.b.x, u_input.c.x))).b.x))));
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(u_input.c, select(reverseBits(~u_input.c), u_input.c, var_0.x)), -select(abs(u_input.b.zy), min(-vec2<i32>(1i, u_input.b.x), -u_input.b.zy), false), 33477u, vec3<f32>(1000f, global1[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u | var_3.b.x, firstLeadingBit(48494u)), 19u)] + _wgslsmith_f_op_f32(round(-651f)))), u_input.b.x);
}

