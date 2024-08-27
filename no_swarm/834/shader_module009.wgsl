struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: bool;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)));

var<private> global3: array<Struct_1, 26>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false)), vec3<f32>(988f, -738f, 1000f), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-225f - arg_1.x));
    let var_1 = select(vec4<bool>(arg_3.c.a.x, arg_3.c.a.x, true, any(vec4<bool>(true & global0.x, u_input.c <= u_input.c, -591f > global4.b.x, u_input.a != u_input.a))), select(!select(vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, false, false, true), !vec4<bool>(arg_3.d.a.x, true, arg_0.a.x, false)), !select(!vec4<bool>(arg_3.c.a.x, arg_3.c.a.x, false, arg_0.a.x), select(vec4<bool>(false, arg_3.d.a.x, true, arg_3.a.a.x), vec4<bool>(global4.c.a.x, arg_3.c.a.x, arg_0.a.x, arg_3.d.a.x), arg_3.c.a.x), !arg_3.a.a.x), false), !arg_3.d.a.x);
    global0 = !var_1;
    let var_2 = !vec4<bool>(!(!any(vec3<bool>(true, true, true))), true, all(vec2<bool>(!var_1.x, u_input.a < -1i)), _wgslsmith_f_op_f32(max(arg_3.b.x, arg_3.b.x)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(985f * arg_1.x))));
    var var_3 = any(select(vec2<bool>(var_1.x, all(vec3<bool>(arg_3.c.a.x, true, global0.x))), select(var_1.zx, var_1.yz, any(select(var_2.xy, vec2<bool>(global4.a.a.x, global4.d.a.x), var_1.ww))), select(!global0.xx, arg_0.a, vec2<bool>(true, true))));
    return 57689i;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = ~(-53593i);
    global0 = vec4<bool>(true, !arg_2.d.a.x, true, global4.c.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.b.x + _wgslsmith_f_op_f32(select(152f, _wgslsmith_f_op_f32(floor(1414f)), !any(vec3<bool>(arg_2.a.a.x, true, false)))))));
    let var_2 = func_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~arg_0, u_input.c, 1u), arg_0, _wgslsmith_mult_u32(70928u, 1u >> (arg_0 % 32u))), 24u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, 510f) + _wgslsmith_f_op_vec2_f32(-global4.b.xx)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(441f, 749f) * global4.b.zx), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, 1127f) - global4.b.zx))), true)), firstLeadingBit(min(min(vec2<u32>(4294967295u, 48786u), vec2<u32>(0u, arg_0)), vec2<u32>(1u, arg_0))), arg_2) >> (u_input.c % 32u);
    return var_2;
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 24>();
    global3 = array<Struct_1, 26>();
    let var_0 = func_4(6460u, func_3(global4.d, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f * global4.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.b.x)) - -1367f)), _wgslsmith_div_vec2_u32(vec2<u32>(~13399u, 8430u), vec2<u32>(abs(u_input.c), ~u_input.c)), Struct_2(Struct_1(!global4.d.a), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -731f), global4.b.x, _wgslsmith_f_op_f32(1009f * -842f)), global3[_wgslsmith_index_u32(~0u, 26u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c, abs(16604u)), 26u)])), Struct_2(global2[_wgslsmith_index_u32(u_input.c, 24u)], vec3<f32>(global4.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-107f, -990f), global4.b.x), 729f), Struct_1(vec2<bool>(select(false, global4.d.a.x, global0.x), global4.d.a.x & global4.d.a.x)), Struct_1(vec2<bool>(true, false))));
    var var_1 = Struct_1(global0.xw);
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(~0u ^ (u_input.c >> (66571u % 32u))), ~(~u_input.c), countOneBits(~u_input.c)), vec3<u32>(0u, _wgslsmith_add_u32(u_input.c, u_input.c), ~u_input.c), vec3<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, min(u_input.c << (32746u % 32u), ~u_input.c)), ~u_input.c));
    return 9308u;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, ~50806u, min(arg_0, 1u), u_input.c), vec4<u32>(firstLeadingBit(arg_1), _wgslsmith_add_u32(u_input.c, u_input.c), arg_1 | u_input.c, func_2()), all(vec4<bool>(false, global0.x, false, global0.x))), vec4<u32>(_wgslsmith_add_u32(4294967295u, arg_0) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(arg_0, u_input.c)) % 32u), arg_0, _wgslsmith_mult_u32(u_input.c, ~42683u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, 1u), vec3<u32>(u_input.c, 42429u, u_input.c)), ~24440u)) >> (vec4<u32>(min(_wgslsmith_div_u32(44542u, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(43264u, arg_0, 9169u), vec3<u32>(85333u, 1u, arg_1))), _wgslsmith_sub_u32(4294967295u, arg_0), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_1, u_input.c, 4294967295u), max(vec4<u32>(15441u, 4294967295u, arg_1, u_input.c), vec4<u32>(11148u, 1u, 3416u, u_input.c)))) % vec4<u32>(32u))), 26u)];
    var var_1 = global3[_wgslsmith_index_u32(53895u, 26u)];
    global1 = true;
    global1 = var_0.a.x;
    global4 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(361u ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(74894u, 26336u)) & 24689u), 9958u), 26u)], _wgslsmith_f_op_vec3_f32(abs(global4.b)), global2[_wgslsmith_index_u32(arg_0, 24u)], Struct_1(!(!(!vec2<bool>(global4.a.a.x, true)))));
    return global2[_wgslsmith_index_u32(firstTrailingBit(1u), 24u)];
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    global4 = Struct_2(func_5(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, arg_0), ~vec4<u32>(arg_3.x, 0u, u_input.c, arg_3.x)), ~(u_input.c << (1u % 32u)) >> (func_2() % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-644f, global4.b.x, global4.b.x), global4.b)) + global4.b)), _wgslsmith_f_op_vec3_f32(global4.b - global4.b), Struct_1(select(arg_1.a, vec2<bool>(any(global4.c.a), true), arg_1.a)), func_5(abs((19069u | arg_0) | 4410u), min(arg_3.x | arg_3.x, 0u) | u_input.c, global4.b));
    var var_0 = _wgslsmith_f_op_vec2_f32(global4.b.yz * vec2<f32>(global4.b.x, 1789f));
    let var_1 = true;
    var var_2 = vec4<i32>(-abs(_wgslsmith_div_i32(u_input.a, -1i)), 48925i, u_input.b, _wgslsmith_mult_i32(-1i & u_input.b, u_input.b & _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, 2147483647i)), select(vec2<i32>(u_input.b, u_input.a), vec2<i32>(-1i, u_input.a), global4.a.a))));
    var_2 = vec4<i32>(-1i, var_2.x, firstLeadingBit(max(-2147483647i, var_2.x)) & ~abs(var_2.x), 4656i) << (_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.x, u_input.c, arg_3.x, 0u), vec4<u32>(0u, arg_3.x, 16586u, arg_0)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 42778u, 30579u, arg_3.x) | vec4<u32>(arg_0, arg_0, u_input.c, 7239u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 30111u, u_input.c, arg_0), vec4<u32>(0u, 1u, 21561u, 1u), vec4<u32>(18421u, u_input.c, 32445u, 76967u)), abs(vec4<u32>(arg_0, u_input.c, arg_0, 0u))), vec4<u32>(u_input.c, max(_wgslsmith_clamp_u32(u_input.c, arg_0, arg_3.x), 1u), countOneBits(13345u), abs(_wgslsmith_add_u32(66391u, arg_3.x)))) % vec4<u32>(32u));
    return global2[_wgslsmith_index_u32(88520u, 24u)];
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = ~vec2<u32>(~u_input.c ^ 4294967295u, u_input.c);
    global0 = select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1642f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.b.x))), false, all(vec4<bool>(false, false, u_input.c != 6817u, func_1(78660u, global3[_wgslsmith_index_u32(4294967295u, 26u)], global4.c.a.x, vec3<u32>(45187u, var_0.x, 0u)).a.x)), false), vec4<bool>(true, !any(select(vec4<bool>(global4.c.a.x, global0.x, true, global0.x), vec4<bool>(false, true, global4.a.a.x, arg_0.a.x), vec4<bool>(false, false, arg_0.a.x, global4.a.a.x))), u_input.c >= max(firstTrailingBit(4294967295u), 29097u), !any(vec4<bool>(arg_0.a.x, global4.c.a.x, arg_0.a.x, global4.d.a.x))), !select(select(select(vec4<bool>(false, arg_0.a.x, false, false), vec4<bool>(true, global0.x, global0.x, global4.a.a.x), vec4<bool>(global4.c.a.x, arg_0.a.x, true, global0.x)), vec4<bool>(true, arg_0.a.x, arg_0.a.x, true), vec4<bool>(global4.c.a.x, global0.x, false, false)), select(vec4<bool>(global4.a.a.x, arg_0.a.x, false, arg_0.a.x), vec4<bool>(false, false, arg_0.a.x, false), vec4<bool>(false, arg_0.a.x, false, global0.x)), false));
    global0 = vec4<bool>(any(select(vec3<bool>(false, global0.x, false), global0.zww, vec3<bool>(false, arg_0.a.x, false))) & select((arg_0.a.x | global4.d.a.x) | !global0.x, all(vec2<bool>(arg_0.a.x, global4.c.a.x)), arg_0.a.x), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, global4.b.x)) < _wgslsmith_div_f32(arg_2.x, 1207f), true);
    global3 = array<Struct_1, 26>();
    let var_1 = -func_4(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.c), vec3<u32>(u_input.c, 28333u, 0u)), countOneBits(vec3<u32>(var_0.x, 15784u, u_input.c))), max(_wgslsmith_add_u32(0u, 38499u), ~var_0.x)), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.b, 2147483647i, -1i)), vec3<i32>(2147483647i, -53551i, i32(-1i) * -1i)), Struct_2(Struct_1(vec2<bool>(global0.x, global4.c.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b)), Struct_1(global4.a.a), Struct_1(global0.yx)));
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = 26852i;
    global3 = array<Struct_1, 26>();
    var_0 = select(-1i > u_input.a, !(true && all(!vec2<bool>(global0.x, true))), !(_wgslsmith_sub_i32(~u_input.a, u_input.a) != abs(-47380i | u_input.b)));
    let var_2 = vec3<i32>(7201i, -1i, -1i);
    global2 = array<Struct_1, 24>();
    var var_3 = vec4<u32>(~(~24003u) << (u_input.c % 32u), ~(~reverseBits(u_input.c)), _wgslsmith_clamp_u32(u_input.c, max(_wgslsmith_div_u32(u_input.c, 2833u) >> (~26803u % 32u), 30588u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, abs(u_input.c), ~19273u, ~u_input.c), ~vec4<u32>(u_input.c, 41220u, u_input.c, 8245u))), u_input.c);
    var var_4 = global4.b.x > -375f;
    let var_5 = func_6(func_1(max(0u, max(var_3.x, u_input.c)), Struct_1(vec2<bool>(true, global0.x)), !all(global4.a.a), var_3.wwx), 1000f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1058f, global4.b.x, -819f, global4.b.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1132f, global4.b.x, -1134f, global4.b.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.b.x, 910f, global4.b.x, 431f))))), select(_wgslsmith_f_op_f32(step(1524f, 360f)) < _wgslsmith_f_op_f32(1557f * -1190f), _wgslsmith_f_op_f32(f32(-1f) * -1905f) != _wgslsmith_f_op_f32(floor(-383f)), _wgslsmith_clamp_i32(0i, var_2.x, -2147483647i) >= -24284i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, -20627i, ~4294967295u);
}

