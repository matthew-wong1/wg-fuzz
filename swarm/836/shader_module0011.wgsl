struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(16215i, -37543i)), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-43431i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(36184i, 0i)), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-13534i, 7625i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global1 = array<Struct_1, 4>();
    let var_0 = false;
    let var_1 = select(vec4<bool>(arg_0.x, var_0, !all(select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, true, arg_0.x), arg_0.x)), all(!vec3<bool>(var_0, true, true)) & all(vec3<bool>(true, true, true))), vec4<bool>(arg_0.x, all(!(!vec3<bool>(false, arg_0.x, arg_0.x))), arg_0.x, true), var_0);
    global0 = array<u32, 10>();
    let var_2 = u_input.a.x >> (~max(~39213u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34408u, 10u)], 10u)], 10u)]) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40152u, 10u)], 10u)], 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59196u, 10u)], 10u)], 10u)], 37271u), vec4<u32>(global0[_wgslsmith_index_u32(23884u, 10u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14232u, 10u)], 10u)], 10u)], 10u)], 0u))) % 32u);
    return global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)];
}

fn func_3() -> u32 {
    var var_0 = select(vec4<bool>(false, ~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 63502u, global0[_wgslsmith_index_u32(32029u, 10u)]) > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 10u)], 10u)], true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(~u_input.a.x > _wgslsmith_sub_i32(u_input.c, u_input.c), true, true, true), vec4<bool>(false, all(vec3<bool>(false, false, true)), true, select(true, true, true))), select(select(vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true)) & false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_3(var_0.x, Struct_2(!select(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, true, true, false), false), var_0.x), Struct_1(vec4<bool>(false, var_0.x, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !var_0.x), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b, 0i), u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -849i), u_input.a))), Struct_1(vec4<bool>(var_0.x, var_0.x, !var_0.x, true), vec2<i32>(-15367i, u_input.a.x) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(reverseBits(countOneBits(1u)), 4u)], ~u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(3441u, 1u)), 10u)], 10u)], 10u)]), _wgslsmith_add_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85133u, 10u)], 10u)] ^ 4294967295u, 10u)], global0[_wgslsmith_index_u32(~1u, 10u)]), min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(118734u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)])), 10u)], 4294967295u))), 4u)]);
    let var_2 = !var_0.wx;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -633f), -1742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1197f + 1325f) * _wgslsmith_f_op_f32(select(-257f, -718f, true))) * 813f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) + _wgslsmith_div_f32(-892f, 1f)), 1000f));
    var var_4 = var_1;
    return ~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(global0[_wgslsmith_index_u32(40719u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 0u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(27510u, 10u)], 33696u, 32832u, 25934u) >> (vec4<u32>(0u, 1u, 21572u, 4908u) % vec4<u32>(32u)), select(vec4<bool>(var_1.c.a.x, false, true, var_1.c.a.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), var_1.c.a)), max(vec4<u32>(22529u, 75782u, global0[_wgslsmith_index_u32(~1u, 10u)], max(32103u, global0[_wgslsmith_index_u32(4294967295u, 10u)])), ~max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(1621u, 10u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)]), vec4<u32>(global0[_wgslsmith_index_u32(15337u, 10u)], 18093u, global0[_wgslsmith_index_u32(1u, 10u)], 78251u))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(func_2(arg_1.a.xx), func_3()), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)]), 10u)] | 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(countOneBits(0u) << (~global0[_wgslsmith_index_u32(0u, 10u)] % 32u), global0[_wgslsmith_index_u32(firstTrailingBit(func_1(-372f, Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-18125i, -96946i)), vec2<f32>(-1124f, -963f))), 10u)]) | _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~4428u, ~0u, 67735u ^ global0[_wgslsmith_index_u32(77524u, 10u)], ~4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40983u, 10u)], 10u)], 28822u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6404u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)]) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83678u, 10u)], 10u)], 18285u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22533u, 10u)], 10u)], 10u)], 10u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(42413u, 10u)], global0[_wgslsmith_index_u32(27605u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61399u, 10u)], 10u)]), vec4<u32>(73370u, global0[_wgslsmith_index_u32(46662u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 0u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(65972u, global0[_wgslsmith_index_u32(0u, 10u)] & 32189u), _wgslsmith_add_u32(19498u, ~4294967295u)));
    var var_1 = (_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.a.x, -2147483647i, 991i, 1i)), -select(vec4<i32>(u_input.c, -17780i, 48322i, -16010i), vec4<i32>(25485i, u_input.a.x, u_input.b, 2147483647i), vec4<bool>(true, true, true, false))) & _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(reverseBits(1i), -u_input.b))) > u_input.c;
    let var_2 = Struct_2(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, false)), vec4<bool>(false, 46156i == u_input.b, any(vec3<bool>(false, true, true)), false)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), all(vec2<bool>(true, true))), Struct_1(vec4<bool>(true, true, true, true), firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a))), global1[_wgslsmith_index_u32(4294967295u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 4u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23997u, 10u)], 10u)], 4u)], -1i);
    var_0 = 4294967295u;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1332f, _wgslsmith_f_op_f32(f32(-1f) * -987f), -477f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-809f, 603f, -227f), _wgslsmith_f_op_vec3_f32(vec3<f32>(497f, -1169f, 1731f) - vec3<f32>(-1672f, 1240f, 1020f)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)] != 1u)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, -1652f, _wgslsmith_f_op_f32(round(309f))))), select(var_2.d.a.zwz, select(!select(var_2.d.a.yyw, vec3<bool>(false, var_2.c.a.x, false), var_2.c.a.wyw), var_2.c.a.wyy, select(2147483647i <= var_2.b.b.x, var_2.b.a.x | var_2.a.x, true)), any(var_2.d.a.yw))));
    let var_4 = any(vec3<bool>(!any(var_2.a), false, var_2.d.a.x & all(!var_2.c.a.xww)));
    let var_5 = 52225u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yz, vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(37933u, var_5, var_5, 0u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(0u, 10u)]))) >> (0u % 32u), select(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)] ^ var_5), ~17100u, true), countOneBits(1u)), max(vec3<u32>(_wgslsmith_add_u32(var_5, 1u), 1u, 45450u), vec3<u32>(~4294967295u, 67211u << (func_1(var_3.x, var_2.c, vec2<f32>(var_3.x, var_3.x)) % 32u), 27617u)), -countOneBits(vec3<i32>(u_input.c, ~(-35828i), -1i)), ~abs(~vec2<u32>(var_5, 9313u)));
}

