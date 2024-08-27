struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-1i, 1i, -9695i), vec3<i32>(-3205i, i32(-2147483648), -1i), vec3<i32>(-10737i, 0i, -54551i), vec3<i32>(-44747i, 17962i, 1i), vec3<i32>(2147483647i, 38516i, 0i), vec3<i32>(1i, 1i, 0i), vec3<i32>(-1i, 49835i, 2147483647i), vec3<i32>(28599i, 1i, -28130i), vec3<i32>(1021i, 1i, -1i), vec3<i32>(-1i, 1252i, 60519i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-46103i, 1i, 35537i), vec3<i32>(-7199i, 2147483647i, 1i), vec3<i32>(35026i, 13131i, -5849i), vec3<i32>(8092i, -11235i, 0i), vec3<i32>(i32(-2147483648), -31505i, 1i), vec3<i32>(2147483647i, 2147483647i, 16059i), vec3<i32>(-9766i, 1i, 0i));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(0u, 4294967295u, 0u));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<u32>(0u, 721u, 4294967295u)), Struct_1(vec3<u32>(0u, 8589u, 109488u)), Struct_1(vec3<u32>(0u, 20080u, 35286u)), Struct_1(vec3<u32>(23069u, 66550u, 0u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)));

var<private> global4: array<f32, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(~firstTrailingBit(min(0u, 1u)), min(global2.a.x, global2.a.x), u_input.d.x);
    let var_1 = vec3<bool>(~u_input.e == -64811i, (60780i >= _wgslsmith_sub_i32(u_input.a.x, ~415i)) && any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.d.x > global2.a.x), vec2<bool>(true, all(vec4<bool>(false, false, false, true))), vec2<bool>(false, select(true, false, false)))));
    global3 = array<Struct_1, 5>();
    global2 = Struct_1(var_0);
    global3 = array<Struct_1, 5>();
    return -175f;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(-2806f));
    var var_1 = Struct_2(Struct_1(vec3<u32>(~4294967295u, global2.a.x & ~global1.a.x, global1.a.x)), max(1i, countOneBits(~0i << (1u % 32u))), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(global2.a.x, 27u)]))));
    let var_2 = Struct_1(vec3<u32>(~60711u, global2.a.x, ~abs(global2.a.x)));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_1.a.a.zx, vec2<u32>(var_1.a.a.x, 0u) | var_2.a.yx), ~43222u, 4294967295u), 27u)]))));
    global3 = array<Struct_1, 5>();
    return Struct_2(Struct_1(~global1.a >> (~reverseBits(vec3<u32>(4294967295u, 0u, 0u)) % vec3<u32>(32u))), u_input.b.x, _wgslsmith_mod_u32(select(_wgslsmith_div_u32(~0u, abs(global1.a.x)), ~var_1.c | ~1u, 2147483647i > ~var_1.b), global1.a.x), global4[_wgslsmith_index_u32(global2.a.x, 27u)]);
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), true, !any(vec3<bool>(true, true, true)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~8693u, global2.a.x), 27u)] == _wgslsmith_f_op_f32(max(538f, global4[_wgslsmith_index_u32(~13638u, 27u)]))));
    global0 = array<vec3<i32>, 18>();
    var var_1 = ~vec4<u32>(4294967295u, _wgslsmith_sub_u32(max(u_input.d.x, global2.a.x) | global1.a.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.a.x, 93823u), 6744u ^ u_input.c, u_input.d.x)), 4294967295u, 55474u);
    let var_2 = abs(0u);
    let var_3 = Struct_3(Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_2, 4294967295u), var_1.www), _wgslsmith_add_vec3_u32(max(vec3<u32>(1u, 14007u, var_1.x), var_0.a.a), vec3<u32>(9493u, 0u, 43682u)))), func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))).a);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<Struct_1, 5>();
    let var_1 = select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, all(vec2<bool>(true, true)), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false)), all(vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true))), !(!vec4<bool>(true, true, any(vec2<bool>(true, false)), true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))));
    var var_2 = _wgslsmith_add_vec3_u32(~(~(~u_input.d)), ~(~(max(u_input.d, global2.a) >> (~u_input.d % vec3<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(firstLeadingBit(global2.a.x), 27u)])) * global4[_wgslsmith_index_u32(17903u, 27u)]);
    var_2 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global1.a.x, 28295u, u_input.d.x, u_input.d.x)), ~vec4<u32>(33960u, 0u, u_input.d.x, global2.a.x)), var_2.x), _wgslsmith_mult_u32(u_input.d.x, 0u), func_1().a.a.x);
    global4 = array<f32, 27>();
    let var_4 = Struct_2(global3[_wgslsmith_index_u32(u_input.c, 5u)], ~(-2147483647i), firstLeadingBit(var_2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(global2.a.x, 27u)], 1216f)))))));
    var var_5 = Struct_1(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(-411f * var_4.d))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-187f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) + var_4.d), !any(vec2<bool>(var_1.x, var_1.x)))))), 2682f);
}

