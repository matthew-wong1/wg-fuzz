struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(10322u, 83495u, 67203u, 0u, 83120u, 4294967295u, 1u, 73451u, 37133u, 0u, 36506u, 42430u);

var<private> global1: vec3<u32>;

var<private> global2: u32 = 1u;

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> bool {
    let var_0 = true;
    var var_1 = min(min(_wgslsmith_clamp_u32(31749u, ~(global3.c.x | 1u), 1u), ~select(0u << (1u % 32u), global1.x, u_input.b != 23033u)), ~(~_wgslsmith_mod_u32(global1.x | 20312u, _wgslsmith_dot_vec2_u32(vec2<u32>(42406u, u_input.b), vec2<u32>(arg_0.a, 53718u)))));
    let var_2 = -(firstLeadingBit(abs(arg_1.wyx)) & select(arg_1.zww | ~arg_1.ywy, ~_wgslsmith_clamp_vec3_i32(arg_1.zxx, vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(arg_1.x, u_input.a, 24772i)), select(false, false, var_0)));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, global3.e, 4294967295u, 17844u)), ~vec4<u32>(60663u, 1u, 0u, 53454u)), ~countOneBits(vec4<u32>(global1.x, 57149u, 66977u, 4294967295u)))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(35572u, 8214u, arg_0.a), max(vec3<u32>(u_input.b, global3.c.x, 48245u), vec3<u32>(73998u, 54882u, arg_0.a))), global3.c));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(956f + 132f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(380f)) - _wgslsmith_f_op_f32(step(-911f, global3.b.x)))), global3.b.x)));
    return true;
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(726f + 429f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-944f - global3.b.x))))), _wgslsmith_f_op_f32(global3.b.x + -1000f), global3.a && global3.d.x)), 674f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.b.x, global3.b.x)))) * 1126f));
    global3 = Struct_1(!func_3(Struct_3(78415u), vec4<i32>(18355i, -50565i, u_input.a, u_input.a) | -vec4<i32>(-62064i, u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b + vec3<f32>(755f, var_0.x, global3.b.x)) * vec3<f32>(1197f, -337f, -127f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global3.b.x, 183f))), global3.b), _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, u_input.b, 0u) | global3.c, global3.c), ~vec3<u32>(43594u, ~13332u, 4294967295u & global1.x)), select(!select(global3.d, select(vec2<bool>(global3.a, true), global3.d, vec2<bool>(global3.d.x, false)), global3.d.x), select(vec2<bool>(any(vec4<bool>(global3.a, global3.d.x, global3.d.x, global3.a)), global3.a), global3.d, global3.a), select(vec2<bool>(true, true), global3.d, select(select(vec2<bool>(true, global3.d.x), vec2<bool>(false, false), vec2<bool>(global3.d.x, global3.a)), !global3.d, true))), ~abs(_wgslsmith_mult_u32(global3.c.x, 106591u) & _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 33973u, global1.x, 0u), vec4<u32>(global3.c.x, global0[_wgslsmith_index_u32(40091u, 12u)], global1.x, 1u))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.wz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global3.b.zz)))))), var_0.xx);
    return Struct_3(16770u);
}

fn func_1() -> Struct_2 {
    var var_0 = -1000f;
    let var_1 = func_2();
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b.xx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, global3.b.x)))), vec2<f32>(_wgslsmith_div_f32(global3.b.x, global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - global3.b.x), global3.b.x))));
    var var_3 = Struct_1(global3.d.x, global3.b, vec3<u32>(4294967295u, global3.e, global3.c.x), vec2<bool>(global3.a, global3.d.x), ~(~func_2().a));
    global2 = _wgslsmith_dot_vec4_u32(select(~max(vec4<u32>(73548u, global1.x, 48228u, global0[_wgslsmith_index_u32(var_3.c.x, 12u)]) | vec4<u32>(11135u, 58438u, 0u, var_3.c.x), ~vec4<u32>(global3.c.x, global3.c.x, 21024u, global3.c.x)), ~(~vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13902u, 12u)], 12u)], var_3.e, 50134u)) & vec4<u32>(_wgslsmith_mult_u32(global1.x, 42967u), countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), ~u_input.b, select(0u, var_1.a, false)), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, var_3.d.x, true), var_3.d.x))), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, var_3.c.x, global3.e, u_input.b), vec4<u32>(0u, u_input.b, 9524u, 20293u)))));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-524f, var_2.b.x)), _wgslsmith_f_op_f32(max(global3.b.x, global3.b.x)), var_3.d.x))), 1000f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global3.b.yz + var_2.a)))), global3.b.yy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c;
    let var_1 = func_1();
    let var_2 = select(!vec4<bool>(true, all(global3.d) || !global3.d.x, all(!vec4<bool>(global3.a, true, false, false)), -1735f < global3.b.x), select(select(!vec4<bool>(global3.a, global3.a, true, false), select(select(vec4<bool>(global3.d.x, true, global3.d.x, false), vec4<bool>(global3.a, global3.a, global3.d.x, false), true), select(vec4<bool>(false, global3.a, global3.d.x, global3.a), vec4<bool>(false, false, global3.d.x, global3.d.x), global3.a), var_0.x < 38721u), select(select(vec4<bool>(false, false, true, global3.d.x), vec4<bool>(global3.a, global3.a, global3.d.x, false), vec4<bool>(global3.a, true, global3.d.x, global3.d.x)), vec4<bool>(global3.d.x, global3.d.x, true, global3.a), select(vec4<bool>(global3.a, global3.a, true, global3.d.x), vec4<bool>(true, global3.d.x, global3.d.x, false), vec4<bool>(global3.d.x, false, global3.d.x, global3.d.x)))), select(vec4<bool>(true, true, !global3.d.x, !global3.d.x), select(!vec4<bool>(global3.a, true, global3.d.x, global3.a), vec4<bool>(false, true, true, false), !vec4<bool>(global3.d.x, true, false, global3.d.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(global3.d.x, global3.d.x, global3.d.x, false), true)), select(!(!global3.d.x), (global0[_wgslsmith_index_u32(6559u, 12u)] <= global1.x) && false, global3.d.x)), select(vec4<bool>(!global3.a, global3.a, false, global3.a), select(select(!vec4<bool>(global3.d.x, global3.a, true, global3.a), select(vec4<bool>(true, global3.a, false, true), vec4<bool>(true, global3.a, global3.d.x, true), false), false), vec4<bool>(true, false, global3.d.x, true), vec4<bool>(true, global3.a, global3.a, global3.a)), true));
    let var_3 = Struct_3(74889u);
    var var_4 = vec3<u32>(33571u >> (_wgslsmith_div_u32(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 12u)]) % 32u), global0[_wgslsmith_index_u32(global1.x, 12u)], 35536u);
    let var_5 = _wgslsmith_clamp_i32(~1i, 1i, -17237i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(global3.b.yy, vec2<f32>(-556f, -1433f), select(global3.d, var_2.wz, select(!vec2<bool>(false, var_2.x), global3.d, select(vec2<bool>(false, var_2.x), var_2.zx, true))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.a >> (global3.c.x % 32u), _wgslsmith_clamp_u32(global3.e, global1.x, 41632u), u_input.b), _wgslsmith_clamp_vec3_u32(global3.c, min(vec3<u32>(global3.e, var_4.x, 0u) >> (vec3<u32>(21547u, 0u, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 24924u, 96295u), global3.c)), vec3<u32>(global3.c.x, var_4.x ^ 57862u, 4294967295u))), _wgslsmith_clamp_u32(33029u, _wgslsmith_add_u32(~40836u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(45927u, global0[_wgslsmith_index_u32(u_input.b, 12u)]), global3.e), 12u)], 12u)]), 69904u), var_5, vec3<i32>(u_input.a, u_input.a, 1i));
}

