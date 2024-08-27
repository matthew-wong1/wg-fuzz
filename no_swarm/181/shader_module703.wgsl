struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -18881i, i32(-2147483648), -1i);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(18700i, 7603i), vec2<i32>(1i, -9702i), vec2<i32>(-39850i, i32(-2147483648)), vec2<i32>(-45077i, -69169i), vec2<i32>(-746i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(6091i, 0i), vec2<i32>(-34980i, 58669i), vec2<i32>(2147483647i, -18567i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 2147483647i));

var<private> global3: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(685f, -2136f), vec2<f32>(2028f, -1000f), vec2<f32>(-525f, -1000f), vec2<f32>(1589f, 213f), vec2<f32>(-396f, -1810f), vec2<f32>(-807f, 754f), vec2<f32>(226f, -779f), vec2<f32>(-1083f, 1000f), vec2<f32>(-644f, 2134f));

var<private> global4: array<u32, 20> = array<u32, 20>(8175u, 4294967295u, 1u, 39210u, 4294967295u, 74769u, 0u, 0u, 0u, 38900u, 55442u, 4294967295u, 1u, 1579u, 17022u, 38995u, 1u, 42757u, 9492u, 7600u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = abs((~(-6770i) ^ _wgslsmith_dot_vec3_i32(global0.zwz, global0.yxw)) >> (~49886u % 32u));
    var var_1 = any(vec3<bool>(true, !(!global1.x) | (u_input.c.x < _wgslsmith_add_u32(u_input.d, u_input.d)), select(global1.x, global1.x, true)));
    var var_2 = -u_input.a.x;
    let var_3 = ~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(46486u, 20u)], global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(1u, 20u)], ~1u), 20u)]);
    global2 = array<vec2<i32>, 11>();
    return all(select(select(select(!vec3<bool>(true, false, global1.x), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, false), vec3<bool>(true, global1.x, global1.x)), true), vec3<bool>(any(vec2<bool>(false, global1.x)), false, global1.x || true), vec3<bool>(false, false, all(vec2<bool>(false, false)))), vec3<bool>(!any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), all(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, global1.x), global1.x)), true), select(!vec3<bool>(false, global1.x, false), vec3<bool>(true, any(vec3<bool>(true, false, false)), any(vec4<bool>(global1.x, global1.x, global1.x, true))), true)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: u32) -> i32 {
    let var_0 = Struct_3(arg_3, Struct_1(~arg_2.x, !vec3<bool>(global1.x, global1.x, !global1.x), -(~countOneBits(35175i)), select(vec2<bool>(true, true), select(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), global1.x), !vec2<bool>(global1.x, global1.x), func_3()), true)), select(select(!vec2<bool>(global1.x, global1.x), select(vec2<bool>(true, true), !vec2<bool>(global1.x, global1.x), global1.x), vec2<bool>(global1.x, all(vec2<bool>(global1.x, false)))), !select(!vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), !vec2<bool>(false, global1.x)), true), arg_0);
    global0 = select(vec4<i32>(-1i) * -vec4<i32>(-global0.x, 2147483647i, -2147483647i, firstTrailingBit(-1i)), abs(-min(vec4<i32>(u_input.a.x, -18256i, u_input.b, -2147483647i), vec4<i32>(105399i, -25544i, global0.x, var_0.b.c)) << (~u_input.c % vec4<u32>(32u))), !vec4<bool>(false, !var_0.c.x || all(vec3<bool>(var_0.c.x, global1.x, global1.x)), var_0.c.x, _wgslsmith_div_f32(-341f, 694f) <= arg_0));
    var var_1 = var_0.b;
    let var_2 = 0u;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~var_1.a, 4294967295u), 0u, ~(var_0.a >> (var_1.a % 32u))), vec3<u32>(54316u, ~_wgslsmith_mult_u32(arg_2.x, var_0.a), ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, 1u, 37117u, 28440u)))), select(vec3<bool>(!(global1.x | false), false, any(!vec3<bool>(var_1.d.x, var_1.d.x, true))), select(vec3<bool>(var_1.b.x, all(var_1.b), true), vec3<bool>(any(var_0.b.d), select(true, true, global1.x), var_2 >= var_1.a), all(vec4<bool>(var_0.c.x, true, global1.x, global1.x))), false), var_1.c << (~global4[_wgslsmith_index_u32(~(96202u << (var_1.a % 32u)), 20u)] % 32u), select(!(!select(vec2<bool>(true, false), var_0.c, var_1.d)), select(select(var_1.b.yx, !vec2<bool>(false, var_0.b.d.x), var_0.c.x), var_1.d, all(select(vec4<bool>(global1.x, true, var_0.c.x, var_0.c.x), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(var_0.c.x, global1.x, var_1.b.x, var_0.b.d.x)))), var_0.c.x || any(var_0.b.b.xx)));
    return _wgslsmith_clamp_i32(var_3.c, var_0.b.c, -2147483647i);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = u_input.b;
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(var_0, abs(~(-2147483647i))), 1i, -global0.x, countOneBits(_wgslsmith_mult_i32(func_2(-2042f, vec4<f32>(231f, -601f, 385f, -689f), u_input.c.xx, 19967u), -global0.x))) ^ -vec4<i32>(-21184i, _wgslsmith_dot_vec3_i32(vec3<i32>(-44782i, 38095i, var_0), vec3<i32>(47764i, u_input.a.x, 2147483647i)) << (abs(4294967295u) % 32u), var_0, -1i);
    let var_2 = Struct_3(28679u, Struct_1(0u, !select(!vec3<bool>(true, arg_2.a, true), select(vec3<bool>(arg_1.a, true, arg_2.a), vec3<bool>(true, false, false), false), true), ~(13155i & _wgslsmith_mult_i32(global0.x, var_1.x)), vec2<bool>(any(vec4<bool>(false, arg_2.a, arg_1.a, arg_2.a)), true)), vec2<bool>(!any(!vec4<bool>(global1.x, false, false, arg_1.a)), arg_2.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1285f, -340f))));
    let var_3 = select(select(select(select(vec4<bool>(true, false, global1.x, global1.x), select(vec4<bool>(var_2.b.b.x, var_2.c.x, arg_2.a, true), vec4<bool>(var_2.c.x, arg_1.a, global1.x, arg_2.a), arg_1.a), true), !vec4<bool>(global1.x, true, global1.x, true), true != (global0.x == -2147483647i)), !vec4<bool>(true, var_2.d > -2411f, var_2.c.x, all(var_2.b.b)), select(!select(vec4<bool>(var_2.c.x, true, arg_2.a, arg_1.a), vec4<bool>(true, false, true, arg_1.a), vec4<bool>(arg_1.a, global1.x, false, false)), select(!vec4<bool>(true, true, arg_2.a, var_2.c.x), select(vec4<bool>(global1.x, false, false, arg_1.a), vec4<bool>(arg_2.a, arg_2.a, true, var_2.c.x), vec4<bool>(arg_1.a, arg_2.a, true, arg_1.a)), !global1.x), false)), select(!(!(!vec4<bool>(true, true, arg_2.a, global1.x))), select(!vec4<bool>(false, global1.x, true, global1.x), select(select(vec4<bool>(global1.x, var_2.b.d.x, var_2.c.x, var_2.c.x), vec4<bool>(var_2.b.b.x, arg_1.a, global1.x, true), arg_2.a), vec4<bool>(var_2.c.x, false, arg_1.a, arg_2.a), var_2.b.c == 59194i), select(vec4<bool>(global1.x, var_2.b.d.x, arg_2.a, arg_2.a), select(vec4<bool>(arg_2.a, true, arg_2.a, false), vec4<bool>(var_2.c.x, false, false, arg_2.a), var_2.c.x), global1.x)), select(vec4<bool>(true, arg_2.a, arg_1.a || arg_2.a, global1.x), vec4<bool>(true, false, func_3(), true), true)), vec4<bool>(!(!arg_2.a), false, !arg_2.a, false));
    var var_4 = ~global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(4294967295u, ~(arg_0 & 4294967295u), global4[_wgslsmith_index_u32(13956u, 20u)])), 20u)], 11u)];
    return var_2.b.d.x;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(62910u >> (~(~_wgslsmith_mult_u32(u_input.d, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 20u)], 20u)])) % 32u), vec3<bool>(!all(vec3<bool>(false, arg_0.d.x, false)), true | (global1.x & (arg_0.b.x | false)), all(!vec3<bool>(global1.x, arg_0.d.x, false))), -1i, !select(select(vec2<bool>(arg_0.b.x, false), !arg_0.d, !vec2<bool>(global1.x, false)), !vec2<bool>(false, arg_0.d.x), all(arg_0.b)));
    let var_1 = Struct_3(firstLeadingBit(max(~4294967295u, u_input.d ^ 2534u)) ^ ~u_input.d, arg_0, select(vec2<bool>(true, true), vec2<bool>(all(select(vec3<bool>(true, true, arg_0.d.x), var_0.b, global1.x)), var_0.b.x), true), -197f);
    global0 = vec4<i32>(countOneBits(var_0.c), arg_0.c, firstLeadingBit(firstLeadingBit(-1i)), u_input.b);
    var var_2 = 334f;
    var var_3 = -2147483647i;
    return vec2<bool>(select(!(var_1.b.d.x || false), !var_0.b.x, var_1.c.x), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(false & all(vec2<bool>(false, global1.x)), ~u_input.d >= u_input.d));
    global4 = array<u32, 20>();
    global2 = array<vec2<i32>, 11>();
    var_0 = func_4(Struct_1(~reverseBits(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), select(vec3<bool>(func_1(0u, Struct_2(global1.x), Struct_2(true)), !global1.x, true), !vec3<bool>(var_0.x, false, global1.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_0.x, global1.x), vec3<bool>(global1.x, false, var_0.x), vec3<bool>(false, global1.x, global1.x)), vec3<bool>(var_0.x, global1.x, true))), 0i, select(select(vec2<bool>(global1.x, var_0.x), !vec2<bool>(var_0.x, true), global1.x), !vec2<bool>(false, var_0.x), false)));
    var var_1 = -_wgslsmith_sub_i32(u_input.b, -28505i);
    var_0 = select(!vec2<bool>(var_0.x, select(true, var_0.x, var_0.x) && true), func_4(Struct_1(1u, vec3<bool>(false & var_0.x, 12795u <= u_input.d, true), _wgslsmith_div_i32(u_input.a.x, u_input.b), select(func_4(Struct_1(global4[_wgslsmith_index_u32(4294967295u, 20u)], vec3<bool>(true, true, false), global0.x, vec2<bool>(true, global1.x))), !vec2<bool>(true, global1.x), true))), func_4(Struct_1(reverseBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u | global4[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)]), !(!vec3<bool>(global1.x, false, true)), u_input.b, select(!vec2<bool>(global1.x, false), !vec2<bool>(false, global1.x), select(var_0.x, global1.x, global1.x)))));
    var_1 = (_wgslsmith_div_i32(1i, global0.x) ^ u_input.b) << (_wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(42396u, 20u)], 1u, 4294967295u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c.x, 21945u), 1u, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(0u, 20u)], 1u)) >> (4294967295u % 32u), ~_wgslsmith_mult_u32(~(~u_input.d), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.xyz, u_input.c.xyw), ~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 0u, 95268u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -280f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1556f)), _wgslsmith_div_f32(-884f, -626f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1167f) - -235f), -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(651f)), _wgslsmith_f_op_f32(trunc(-860f)), _wgslsmith_f_op_f32(round(-1024f)))), vec4<bool>(true & func_3(), global1.x, global1.x, true))));
}

