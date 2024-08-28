struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(414f, vec4<bool>(false, true, true, false), vec3<bool>(false, true, true));

var<private> global3: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, -9662i), vec2<i32>(20690i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(10164i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, -20585i), vec2<i32>(2147483647i, 4676i), vec2<i32>(-1i, 11418i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 13608i), vec2<i32>(2147483647i, 4110i), vec2<i32>(-4314i, -31630i), vec2<i32>(0i, -4065i), vec2<i32>(18737i, i32(-2147483648)), vec2<i32>(0i, -84966i), vec2<i32>(24899i, 3317i), vec2<i32>(-1i, -43652i), vec2<i32>(-62761i, -8558i), vec2<i32>(i32(-2147483648), 32389i), vec2<i32>(-1i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(arg_2.b - arg_3.x), _wgslsmith_f_op_f32(round(arg_2.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.b)))))), _wgslsmith_f_op_vec4_f32(abs(arg_3)), arg_2.a);
    global2 = arg_2.a;
    global3 = array<vec2<i32>, 21>();
    let var_1 = arg_1 << (arg_1 % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1612f * global2.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-556f, -191f)) - _wgslsmith_f_op_f32(trunc(436f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -2347f)), arg_2.a.a))));
    return !any(vec4<bool>(true, var_0.c.b.x, global2.c.x, arg_1.x < 4294967295u));
}

fn func_2() -> Struct_2 {
    let var_0 = false;
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_div_f32(global1.x, global2.a)) * -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1.x, global1.x, var_0))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global2.a, 680f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global1.x, global2.a, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, 1170f, global1.x, global2.a)))))), Struct_1(_wgslsmith_f_op_f32(-global1.x), global2.b, vec3<bool>(true, any(global2.c.zx), true)));
    global0 = array<i32, 29>();
    global2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-841f - 1005f))), global2.b, vec3<bool>(all(!vec3<bool>(false, global2.c.x, var_1.c.c.x)), !(global1.x == var_1.c.a) && var_0, !all(var_1.c.c)));
    return Struct_2(Struct_1(var_1.b.x, !vec4<bool>(any(vec2<bool>(var_1.c.b.x, var_0)), true, all(vec2<bool>(true, true)), global1.x >= var_1.c.a), vec3<bool>(!var_0 | false, func_3(select(u_input.a.x, 1i, var_0), max(vec4<u32>(13161u, 7512u, 4294967295u, 21180u), vec4<u32>(4294967295u, 1u, 4806u, 24009u)), Struct_2(Struct_1(-791f, vec4<bool>(true, false, var_1.c.c.x, false), global2.b.wzw), -572f), vec4<f32>(global1.x, global1.x, 141f, global1.x)), global2.b.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 1f) * global1.x)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = func_2();
    global0 = array<i32, 29>();
    let var_1 = ~vec3<u32>(1u, _wgslsmith_sub_u32(~1u, reverseBits(~28395u)), 101012u);
    global2 = var_0.a;
    let var_2 = func_2().a;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(vec4<f32>(_wgslsmith_f_op_f32(min(-1842f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-global1.x), -261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(sign(global1.x)))));
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(0u, 0u)), ~firstLeadingBit(vec2<u32>(0u, 4294967295u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(26800u, 0u), select(vec2<u32>(83158u, 0u), ~vec2<u32>(4294967295u, 6650u), global2.c.x), ~select(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), global2.c.zz))) > (_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(30642u, 51224u), vec2<u32>(0u, 23334u))), 1u) << (1u % 32u));
    let var_1 = global2.b.x;
    let var_2 = _wgslsmith_div_u32(~abs(firstLeadingBit(4294967295u)), ~(~37920u) >> (~(_wgslsmith_dot_vec3_u32(vec3<u32>(115161u, 24732u, 10284u), vec3<u32>(41962u, 0u, 0u)) << (reverseBits(1u) % 32u)) % 32u));
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 29u)] ^ u_input.a.x;
    let var_4 = select(0i, 34824i, global2.b.x);
    let var_5 = _wgslsmith_f_op_f32(-global1.x);
    let var_6 = _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_2, 8593u, var_2)), _wgslsmith_clamp_vec3_u32(vec3<u32>(10898u, var_2, 35332u) >> (vec3<u32>(var_2, var_2, var_2) % vec3<u32>(32u)), select(vec3<u32>(1u, 30679u, var_2), vec3<u32>(17705u, var_2, var_2), global2.c), abs(vec3<u32>(var_2, 29699u, 15197u))))), select(vec3<u32>(var_2, ~68301u, 30748u), countOneBits(firstLeadingBit(vec3<u32>(var_2, var_2, var_2))) >> (~abs(vec3<u32>(9374u, 1u, 1u)) % vec3<u32>(32u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(var_2, firstLeadingBit(26597u))), vec2<u32>(~var_6, ~max(0u, var_2))), min(vec2<u32>(var_6, _wgslsmith_add_u32(1u, ~var_6)), _wgslsmith_sub_vec2_u32(min(countOneBits(vec2<u32>(var_6, var_2)), vec2<u32>(26435u, 1u) >> (vec2<u32>(var_2, var_2) % vec2<u32>(32u))), vec2<u32>(var_6, _wgslsmith_add_u32(var_2, var_2)))));
}

