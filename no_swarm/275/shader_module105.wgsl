struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(2147483647i, 8481i, i32(-2147483648), 0i), vec3<u32>(4294967295u, 47509u, 85709u), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(1i, 45350i, i32(-2147483648), 1i), vec3<u32>(1u, 4294967295u, 2153u), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(2603i, i32(-2147483648), 1i, 1i), vec3<u32>(1966u, 25637u, 22942u), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-72557i, 1i, -28096i, 1i), vec3<u32>(5133u, 52837u, 70866u), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(12927i, 2147483647i, -10171i, 16847i), vec3<u32>(0u, 9948u, 4294967295u), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(1i, -1i, i32(-2147483648), 0i), vec3<u32>(1u, 4294967295u, 0u), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-94957i, i32(-2147483648), -1i, -1i), vec3<u32>(29891u, 4294967295u, 58703u), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(64005i, 11764i, 6169i, 44529i), vec3<u32>(1u, 17400u, 56438u), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-6802i, 2147483647i, 1i, -25742i), vec3<u32>(19470u, 30107u, 1u), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(29241i, 54729i, -42093i, -22417i), vec3<u32>(4294967295u, 0u, 9259u), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(i32(-2147483648), -29182i, 2147483647i, i32(-2147483648)), vec3<u32>(0u, 41812u, 79830u), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(4554i, -1i, -13079i, 1i), vec3<u32>(31662u, 1u, 0u), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-39800i, -16123i, -49653i, 0i), vec3<u32>(60478u, 0u, 1u), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(2147483647i, -32070i, 2147483647i, -11825i), vec3<u32>(0u, 1047u, 26499u), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(1i, -16338i, 6544i, 1i), vec3<u32>(4979u, 44848u, 4865u), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(2147483647i, 23871i, 0i, 2826i), vec3<u32>(18683u, 19131u, 75294u), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-1i, 25896i, 0i, i32(-2147483648)), vec3<u32>(25237u, 0u, 4294967295u), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-120604i, 8335i, 26178i, 1i), vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-57856i, i32(-2147483648), 0i, -2336i), vec3<u32>(4294967295u, 19810u, 4294967295u), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(0i, -1i, -86107i, -39669i), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<bool>(true, false, true)));

var<private> global1: vec2<u32>;

var<private> global2: vec2<u32>;

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = select(!select(select(vec4<bool>(global3.c.x, global3.c.x, global3.c.x, global3.c.x), select(vec4<bool>(global3.c.x, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), !vec4<bool>(global3.c.x, global3.c.x, false, false)), select(!vec4<bool>(global3.c.x, global3.c.x, false, false), select(vec4<bool>(global3.c.x, false, global3.c.x, false), vec4<bool>(global3.c.x, false, global3.c.x, global3.c.x), global3.c.x), vec4<bool>(global3.c.x, global3.c.x, true, false)), select(select(false, false, false), false, global3.c.x)), vec4<bool>(global3.c.x, !global3.c.x, any(global3.c), true), true);
    var var_1 = !var_0.yzz;
    var var_2 = Struct_3(!(!vec4<bool>(1u <= arg_0, select(var_1.x, false, global3.c.x), true, true)));
    var var_3 = global3.a.x;
    var var_4 = 2147483647i;
    return select(vec4<i32>(11311i, -global3.a.x, min(-16515i, -1i), 2147483647i) ^ _wgslsmith_div_vec4_i32(global3.a, countOneBits(abs(vec4<i32>(u_input.b, global3.a.x, 24471i, 2147483647i)))), vec4<i32>(u_input.b & 1i, _wgslsmith_clamp_i32(countOneBits(global3.a.x ^ u_input.b), abs(~0i), -2147483647i), 0i, ~u_input.b), !var_0);
}

fn func_2() -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(func_3(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(44377u, 57145u)), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.c, global1.x), vec2<u32>(global1.x, global2.x)))) >> ((select(~vec4<u32>(32228u, u_input.d.x, 4294967295u, global2.x), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 0u, global3.b.x, global3.b.x), vec4<u32>(9552u, global2.x, global2.x, 1u)), global3.c.x | global3.c.x) | (vec4<u32>(49959u, 25422u, 4294967295u, u_input.a.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(54131u, 1u, 1186u, 0u), vec4<u32>(u_input.a.x, global1.x, 0u, 46734u)) % vec4<u32>(32u)))) % vec4<u32>(32u)), max(abs(global3.b), vec3<u32>(~countOneBits(46059u), ~_wgslsmith_dot_vec2_u32(global3.b.xz, global3.b.xz), 58218u)), vec3<bool>(!global3.c.x, global3.c.x, true));
    var_0 = false;
    global3 = Struct_1(func_3(~select(1u, _wgslsmith_div_u32(4294967295u, global1.x), select(global3.c.x, true, false))), select(~(~var_1.b), ~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(global3.b.x, global1.x, 0u), global3.b, global3.c.x), vec3<u32>(u_input.c, global3.b.x, 40198u), vec3<u32>(0u, u_input.c, global3.b.x)), !all(vec2<bool>(var_1.c.x, false)) & true), !(!(!vec3<bool>(global3.c.x, global3.c.x, false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 346f, 1423f), vec3<f32>(-2299f, 746f, 233f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(628f, -917f, -1013f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-549f, -474f, -1596f), vec3<f32>(562f, 983f, -857f))))), select(select(var_1.c, select(vec3<bool>(var_1.c.x, var_1.c.x, global3.c.x), global3.c, true), global3.c.x), select(vec3<bool>(true, var_1.c.x, true), global3.c, vec3<bool>(true, true, global3.c.x)), !var_1.c.x))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1246f) + _wgslsmith_f_op_f32(floor(1842f))))), _wgslsmith_f_op_f32(step(1187f, 1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1646f - -114f))))));
    return abs(~global3.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_1(vec4<i32>(-25683i, -global3.a.x, arg_0.a.x, -arg_1.b.a.x), min(select(~vec3<u32>(24961u, 99196u, 4294967295u), arg_0.b, all(!global3.c.zy)), global3.b), !select(arg_1.a.c, !select(arg_0.c, arg_1.a.c, arg_0.c), global3.c));
    global1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(57412u, ~75473u), _wgslsmith_mult_u32(0u, func_2())), _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(62898u, global2.x, 29897u)), 71194u), select(global3.b.yz, abs(vec2<u32>(arg_0.b.x, 0u) << (global3.b.yx % vec2<u32>(32u))), !(!vec2<bool>(true, var_0.c.x)))));
    let var_1 = abs(~arg_1.b.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(171f, 230f, -477f)))))));
    var var_3 = _wgslsmith_sub_i32(1i, ~var_1);
    return abs(firstTrailingBit(min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_0.a.x), vec2<i32>(0i, -9324i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-5448i, u_input.b, arg_1.a.a.x), var_0.a.wwz)))) << ((~(~arg_1.a.b.x) >> (_wgslsmith_clamp_u32(~85u, 1189u, ~u_input.d.x) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(global3.b.x, abs(_wgslsmith_mod_u32(select(global2.x, u_input.d.x >> (4294967295u % 32u), global3.c.x), abs(17317u))));
    var var_1 = Struct_2(Struct_1(vec4<i32>(global3.a.x, func_1(Struct_1(global3.a, global3.b, vec3<bool>(true, global3.c.x, false)), Struct_2(Struct_1(vec4<i32>(0i, 0i, -2147483647i, -1i), global3.b, vec3<bool>(false, global3.c.x, global3.c.x)), Struct_1(vec4<i32>(global3.a.x, u_input.b, -12167i, 2147483647i), vec3<u32>(var_0.x, global3.b.x, 29368u), global3.c), vec2<f32>(131f, -763f))), _wgslsmith_sub_i32(u_input.b, -23019i), _wgslsmith_mult_i32(1i, ~global3.a.x)), global3.b, !select(global3.c, vec3<bool>(global3.c.x, false, false), true)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~0u, global2.x), 20u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(488f - _wgslsmith_f_op_f32(-1000f - -1380f)), -960f)));
    let var_2 = var_1.a;
    let var_3 = func_2() & 0u;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_f_op_f32(-471f + -165f), var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.x, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, firstLeadingBit(113440u), 4294967295u, firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, 4294967295u))), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.b.x, var_2.b.x, 4294967295u, global1.x), vec4<u32>(52430u, global2.x, 4294967295u, global2.x), vec4<u32>(4294967295u, 4294967295u, 0u, global1.x)), ~reverseBits(vec4<u32>(35153u, 4294967295u, var_1.a.b.x, global1.x)))));
}

