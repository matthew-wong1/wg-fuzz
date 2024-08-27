struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-109f, -652f), vec2<f32>(1007f, -1444f), Struct_1(false, 28598i, vec4<u32>(4294967295u, 4294967295u, 48956u, 0u)), -41142i);

var<private> global1: f32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, 0i, vec4<u32>(26421u, 0u, 0u, 1u)), Struct_1(false, -14425i, vec4<u32>(23995u, 82489u, 4294967295u, 1u)), Struct_1(true, 0i, vec4<u32>(1u, 1u, 4294967295u, 0u)), Struct_1(false, -18136i, vec4<u32>(4294967295u, 23433u, 54815u, 27322u)), Struct_1(true, 0i, vec4<u32>(32796u, 0u, 1u, 2583u)), Struct_1(true, -1398i, vec4<u32>(4294967295u, 0u, 58290u, 17291u)), Struct_1(false, -27678i, vec4<u32>(53802u, 1u, 4294967295u, 25307u)), Struct_1(false, 2147483647i, vec4<u32>(1u, 35527u, 11823u, 10698u)), Struct_1(true, -56854i, vec4<u32>(8169u, 4294967295u, 1u, 5911u)), Struct_1(false, i32(-2147483648), vec4<u32>(0u, 1u, 10294u, 4294967295u)), Struct_1(false, 26393i, vec4<u32>(47737u, 52168u, 1u, 35980u)), Struct_1(true, 29656i, vec4<u32>(21827u, 4294967295u, 13790u, 4294967295u)), Struct_1(false, 6515i, vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_1(false, 15020i, vec4<u32>(40741u, 0u, 4294967295u, 0u)), Struct_1(false, i32(-2147483648), vec4<u32>(0u, 67129u, 1u, 0u)), Struct_1(true, i32(-2147483648), vec4<u32>(7756u, 40906u, 0u, 63631u)), Struct_1(true, -43656i, vec4<u32>(16034u, 978u, 0u, 33716u)), Struct_1(false, -10671i, vec4<u32>(1u, 1u, 1u, 32314u)), Struct_1(true, 0i, vec4<u32>(12972u, 30467u, 34193u, 0u)), Struct_1(false, i32(-2147483648), vec4<u32>(1u, 44064u, 73260u, 17556u)), Struct_1(true, -1i, vec4<u32>(25654u, 0u, 1u, 37980u)), Struct_1(true, 5168i, vec4<u32>(0u, 44766u, 116117u, 4294967295u)), Struct_1(false, 64784i, vec4<u32>(29221u, 1u, 0u, 4294967295u)), Struct_1(true, 2147483647i, vec4<u32>(3u, 14316u, 1u, 33639u)), Struct_1(true, 0i, vec4<u32>(41708u, 4133u, 0u, 1u)), Struct_1(false, 2147483647i, vec4<u32>(4294967295u, 0u, 0u, 16771u)), Struct_1(false, 13170i, vec4<u32>(1480u, 0u, 57325u, 16053u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_add_u32(global0.c.c.x, global0.c.c.x) << (select(1u, max(_wgslsmith_clamp_u32(57662u, u_input.a, global0.c.c.x), ~reverseBits(global0.c.c.x)), !(_wgslsmith_f_op_f32(f32(-1f) * -1518f) != global0.b.x)) % 32u);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.x)) + _wgslsmith_f_op_f32(trunc(-922f))))), vec2<f32>(_wgslsmith_f_op_f32(-1775f - -735f), _wgslsmith_f_op_f32(f32(-1f) * -303f)), global0.c, ~(-1i));
    global2 = array<Struct_1, 27>();
    let var_2 = var_0;
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(112f, 966f))))), vec2<f32>(-385f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -651f))))), Struct_1(true & var_1.c.a, var_1.c.b, var_1.c.c), global0.d);
    return _wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(min(var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a - global0.a)))));
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 27>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(select(!vec2<bool>(true, global0.c.a), select(vec2<bool>(global0.c.a, global0.c.a), vec2<bool>(true, false), vec2<bool>(false, global0.c.a)), select(vec2<bool>(true, global0.c.a), vec2<bool>(global0.c.a, true), global0.c.a)), Struct_1(all(vec3<bool>(global0.c.a, true, false)), i32(-1i) * -13886i, vec4<u32>(1u, global0.c.c.x, global0.c.c.x, global0.c.c.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global0.a.x))), _wgslsmith_f_op_f32(433f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x))))), Struct_1(all(vec3<bool>(any(vec3<bool>(false, false, global0.c.a)), global0.c.a == global0.c.a, global0.b.x >= global0.a.x)), _wgslsmith_mult_i32(_wgslsmith_add_i32(54864i, _wgslsmith_add_i32(29342i, global0.c.b)), -global0.d), vec4<u32>(global0.c.c.x, firstLeadingBit(global0.c.c.x), ~1u, ~(~52441u))), _wgslsmith_dot_vec2_i32(-vec2<i32>(13632i, global0.d << (59768u % 32u)), vec2<i32>(28335i, 2147483647i)));
    let var_1 = ~(i32(-1i) * -18685i);
    var var_2 = Struct_2(global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.b)))), var_0.c, var_1);
    global0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.a.x) * vec2<f32>(var_2.b.x, global0.b.x)), vec2<f32>(-983f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, var_2.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 1317f) + vec2<f32>(1095f, 406f))))), vec2<f32>(1000f, 1422f), Struct_1(!select(true, true, true), -2147483647i, vec4<u32>(select(abs(4294967295u), global0.c.c.x, var_0.c.a), u_input.a, var_2.c.c.x, 0u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1, reverseBits(var_1)) << (48495u % 32u), _wgslsmith_mod_i32(global0.d, _wgslsmith_mod_i32(1i, 3664i))));
    return ~0u;
}

fn func_1() -> bool {
    let var_0 = Struct_1(global0.c.a, global0.d, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, func_2()), u_input.a, ~30468u, 4294967295u), global0.c.c));
    let var_1 = _wgslsmith_sub_i32(31539i, -firstLeadingBit(abs(-1i) & abs(global0.d)));
    let var_2 = 1u;
    global1 = _wgslsmith_f_op_f32(min(global0.b.x, -1078f));
    global0 = Struct_2(global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.x, global0.a.x))), global0.b.x)), global2[_wgslsmith_index_u32(17940u, 27u)], -2147483647i);
    return var_0.a & global0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.a >> (~_wgslsmith_mult_u32(global0.c.c.x, ~88551u) % 32u));
    global2 = array<Struct_1, 27>();
    global2 = array<Struct_1, 27>();
    var var_1 = !select(!vec3<bool>(func_1(), all(vec3<bool>(global0.c.a, global0.c.a, false)), true), select(select(vec3<bool>(false, false, global0.c.a), !vec3<bool>(true, global0.c.a, global0.c.a), !vec3<bool>(false, global0.c.a, global0.c.a)), !(!vec3<bool>(true, global0.c.a, global0.c.a)), !(!vec3<bool>(global0.c.a, global0.c.a, false))), !select(!vec3<bool>(global0.c.a, true, false), !vec3<bool>(true, global0.c.a, true), false));
    var var_2 = _wgslsmith_f_op_f32(exp2(global0.b.x));
    var_2 = _wgslsmith_div_f32(-1180f, global0.a.x);
    var var_3 = global0.c;
    var_3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(66887u, (var_3.b ^ 53854i) & 0i, var_3.c, vec4<u32>(4294967295u | var_3.c.x, 4294967295u, 75099u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.c.x, var_0), global0.c.c.zxy) % 32u), var_0), ~countOneBits(~global0.c.c.zx)));
}

