struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<u32>, 30>;

var<private> global3: array<i32, 25>;

var<private> global4: Struct_5 = Struct_5(Struct_1(0u, 636f), vec4<bool>(true, true, true, false), Struct_3(true, Struct_1(47905u, 907f), Struct_2(Struct_1(38588u, -520f), false), vec3<u32>(1u, 0u, 1u), Struct_2(Struct_1(20033u, 1000f), false)), vec2<bool>(false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = global4.c.c.a.a;
    var var_1 = u_input.b;
    let var_2 = ~(global4.c.c.a.a << (select(~global4.a.a, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(11004u, global4.a.a), 1u, _wgslsmith_div_u32(global4.a.a, global4.c.e.a.a)), global0[_wgslsmith_index_u32(15862u, 27u)]) % 32u));
    var var_3 = min(~(~(-u_input.b.xwx ^ max(vec3<i32>(3169i, global1.x, -29335i), var_1.xwz))), vec3<i32>(_wgslsmith_add_i32(-1i, -2147483647i), u_input.b.x, ~u_input.b.x));
    var var_4 = global4.c.c;
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = !func_3();
    let var_1 = ~global4.c.b.a;
    var var_2 = global4.b;
    var var_3 = firstLeadingBit(reverseBits(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.c.e.a.a, var_1, 4294967295u) >> (global4.c.d % vec3<u32>(32u)), global4.c.d))));
    let var_4 = vec4<bool>(false, true, true, !var_0);
    return global4.c.e.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_3 {
    global4 = Struct_5(func_2(), !vec4<bool>(any(!vec2<bool>(true, global4.b.x)), func_2().a <= 5881u, true, arg_2.x), Struct_3(true, func_2(), Struct_2(func_2(), true), vec3<u32>(_wgslsmith_clamp_u32(abs(4294967295u), ~12623u, arg_3.x << (global4.c.e.a.a % 32u)), arg_0.a, countOneBits(_wgslsmith_add_u32(2500u, global4.a.a))), global4.c.c), select(vec2<bool>(select(arg_2.x, all(vec4<bool>(false, arg_1, true, arg_1)), !arg_2.x), !(!arg_2.x)), vec2<bool>(!(0i == u_input.a.x), false | arg_1), all(global4.b)));
    let var_0 = global4.c.e;
    let var_1 = 0u >= firstLeadingBit(~(_wgslsmith_clamp_u32(130459u, 1u, 74626u) | _wgslsmith_mod_u32(24395u, arg_3.x)));
    let var_2 = global4.c;
    return Struct_3(var_0.b, Struct_1(func_2().a, -984f), Struct_2(func_2(), var_2.e.b), ~(vec3<u32>(_wgslsmith_mod_u32(25804u, 4294967295u), 1u << (var_2.e.a.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.c.a.a, 4294967295u, 39625u), vec4<u32>(29805u, 14835u, global4.c.b.a, 1u))) >> (vec3<u32>(1u >> (var_2.b.a % 32u), abs(4294967295u), ~9791u) % vec3<u32>(32u))), Struct_2(func_2(), true));
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(398f, -2261f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1461f)))))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.b, _wgslsmith_f_op_f32(global4.a.b - -169f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.b * _wgslsmith_f_op_f32(-global4.c.c.a.b))));
    global2 = array<vec2<u32>, 30>();
    global3 = array<i32, 25>();
    var var_1 = func_4(func_2(), select(false, global4.b.x, !any(global4.b.yzx)) != false, vec4<bool>(any(global4.b), all(select(select(vec2<bool>(true, false), global4.d, var_0), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], true), !global4.c.c.b)), var_0, _wgslsmith_mod_i32(global1.x, global1.x) < _wgslsmith_clamp_i32(9178i, global3[_wgslsmith_index_u32(global4.c.d.x, 25u)], _wgslsmith_div_i32(u_input.b.x, 0i))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global4.a.a ^ ~(36739u << (global4.a.a % 32u))), 30u)]);
    var var_2 = global4.a.b;
    return Struct_5(func_4(Struct_1(~global4.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.e.a.b) * _wgslsmith_f_op_f32(-global4.c.b.b))), !func_4(global4.c.b, var_1.c.b == false, global4.b, _wgslsmith_add_vec2_u32(var_1.d.yz, var_1.d.zy)).c.b, vec4<bool>(global0[_wgslsmith_index_u32(global4.a.a, 27u)], var_0, !all(global4.b), !(!var_0)), _wgslsmith_clamp_vec2_u32(select(firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<u32>(38094u, var_1.c.a.a), global4.d), _wgslsmith_mod_vec2_u32(min(var_1.d.zx, global2[_wgslsmith_index_u32(63592u, 30u)]), vec2<u32>(1u, 1u) << (vec2<u32>(global4.a.a, var_1.e.a.a) % vec2<u32>(32u))), ~global4.c.d.xz)).c.a, !select(!select(global4.b, vec4<bool>(true, var_0, global0[_wgslsmith_index_u32(var_1.e.a.a, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), vec4<bool>(var_1.e.b, var_0, global4.d.x, var_1.c.b)), !(!global4.b), vec4<bool>(any(global4.d), true, select(var_1.c.b, true, true), all(vec4<bool>(true, true, var_0, false)))), func_4(var_1.e.a, var_1.c.a.a >= func_4(func_4(Struct_1(71706u, global4.a.b), var_1.c.b, vec4<bool>(var_0, global0[_wgslsmith_index_u32(4294967295u, 27u)], false, true), global4.c.d.xz).b, true, global4.b, global2[_wgslsmith_index_u32(1u, 30u)]).b.a, !global4.b, select(global4.c.d.yy, ~global4.c.d.zy, func_4(var_1.e.a, false, global4.b, global2[_wgslsmith_index_u32(42301u, 30u)]).e.b || global4.c.c.b)), global4.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = -560f;
    var var_2 = global4.b.zxw;
    let var_3 = global1.x >= global3[_wgslsmith_index_u32(global4.a.a, 25u)];
    var var_4 = ~vec4<u32>(4294967295u, ~global4.a.a, var_0, max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 32282u, global4.c.b.a), global4.c.d), _wgslsmith_mod_u32(25311u, var_0))) & vec4<u32>(~(~37724u), ~(~(global4.c.e.a.a ^ var_0)), var_0, ~(~42165u));
    var_1 = _wgslsmith_f_op_f32(exp2(global4.a.b));
    global4 = func_1();
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1410f * _wgslsmith_f_op_f32(f32(-1f) * -1318f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.c.e.a.b - -565f), -1391f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.b))), _wgslsmith_f_op_f32(2384f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.c.b.b))))));
    global3 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(13702i, select(_wgslsmith_mult_i32(global1.x, u_input.b.x), 0i & global3[_wgslsmith_index_u32(global4.c.d.x, 25u)], true))), -(-1i >> (~var_0 % 32u)));
}

