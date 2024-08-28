struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(89778u, 25028u)), vec3<f32>(-389f, -269f, 133f), -2982i, Struct_2(vec2<u32>(1u, 33883u)));

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 31> = array<bool, 31>(true, false, true, false, false, true, false, true, false, false, false, false, true, false, true, true, false, false, false, true, false, false, true, true, false, false, true, true, false, false, true);

var<private> global3: array<vec2<bool>, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = -firstLeadingBit(arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.c.x, -516f)), _wgslsmith_f_op_f32(-global0.c.x), all(!vec4<bool>(global2[_wgslsmith_index_u32(global0.a.a.x, 31u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 31u)], false)) || false)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f));
    return true;
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = vec4<f32>(914f, -126f, 176f, global0.c.x);
    let var_1 = ~(~u_input.c.x | global1.x);
    global1 = min(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(55538u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, var_1, var_1, u_input.d.x)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 26149u, global1.x, var_1), vec4<u32>(4294967295u, 0u, 1u, 7206u), vec4<u32>(26383u, 43816u, 0u, 27500u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(485u, 22265u, 41849u, global1.x) | vec4<u32>(27273u, 1279u, 0u, 0u), ~vec4<u32>(39726u, global0.b.a.x, 56964u, global1.x)), vec4<u32>(global0.b.a.x, global1.x, ~4294967295u, _wgslsmith_clamp_u32(var_1, var_1, 1u)), ~(~vec4<u32>(0u, var_1, 72394u, 20780u))) | ~vec4<u32>(~global0.b.a.x, _wgslsmith_div_u32(43374u, 14018u), _wgslsmith_dot_vec4_u32(vec4<u32>(8660u, 1u, u_input.d.x, 1u), vec4<u32>(26462u, 22808u, u_input.d.x, var_1)), global0.b.a.x));
    let var_2 = global2[_wgslsmith_index_u32(global0.a.a.x, 31u)];
    let var_3 = _wgslsmith_add_i32(-2147483647i, reverseBits(-select(~2147483647i, -2147483647i, func_2(vec2<i32>(-25728i, u_input.b.x)))));
    return Struct_3(global0.a, global0.b, vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), global0.c.x, 584f), 19364i, global0.e);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = Struct_1(reverseBits(min(~vec2<u32>(1u, 46515u), select(vec2<u32>(global0.b.a.x, 4294967295u), global0.a.a, global3[_wgslsmith_index_u32(1u, 12u)]) & vec2<u32>(4294967295u, 32876u))));
    let var_1 = vec4<bool>(global2[_wgslsmith_index_u32(select(firstTrailingBit(_wgslsmith_sub_u32(~u_input.d.x, global0.e.a.x | u_input.d.x)), _wgslsmith_mult_u32(global1.x, 58726u), true), 31u)], arg_0, all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(~18237u, 31u)], all(vec4<bool>(false, false, false, false)), true), !select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, false, arg_0, global2[_wgslsmith_index_u32(var_0.a.x, 31u)]), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.c.x, 31u)])), vec4<bool>(!global2[_wgslsmith_index_u32(77561u, 31u)], true, select(true, arg_0, global2[_wgslsmith_index_u32(74530u, 31u)]), arg_0 && arg_0))), arg_0);
    let var_2 = Struct_5(_wgslsmith_div_vec2_f32(global0.c.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, global0.c.x) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, 525f), vec2<f32>(343f, global0.c.x))))), Struct_1(~global0.b.a), countOneBits(global1.zyx), func_1(-439f), -2147483647i);
    var var_3 = Struct_4(Struct_1(global0.b.a), Struct_1(~(~var_2.b.a)));
    global1 = vec4<u32>(~countOneBits(~select(4294967295u, 72445u, global2[_wgslsmith_index_u32(global0.b.a.x, 31u)])), _wgslsmith_mult_u32(14433u ^ ((4294967295u << (global1.x % 32u)) | countOneBits(0u)), global0.e.a.x), 0u, abs(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.a.x, var_3.b.a.x), global1.x) & min(64979u, select(3165u, var_3.b.a.x, false))));
    return abs(firstLeadingBit(reverseBits(vec4<u32>(~15809u, var_0.a.x, global1.x ^ var_0.a.x, global0.b.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(global0.c.x * global0.c.x)));
    let var_0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(max(firstLeadingBit(abs(vec4<u32>(23854u, global1.x, 1u, 55324u))), select(func_3(global2[_wgslsmith_index_u32(1u, 31u)]), ~vec4<u32>(global0.e.a.x, u_input.c.x, 4294967295u, 1u), false))), ~_wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.d.x, global1.x, 12222u, 16036u), vec4<u32>(27877u, u_input.d.x, u_input.c.x, global1.x), global2[_wgslsmith_index_u32(85029u, 31u)]), vec4<u32>(10534u, global1.x, global0.b.a.x, 30243u) | min(vec4<u32>(1u, 1u, 16106u, u_input.d.x), vec4<u32>(0u, global0.e.a.x, 1u, u_input.d.x))));
    global2 = array<bool, 31>();
    global3 = array<vec2<bool>, 12>();
    var var_1 = func_1(global0.c.x).a;
    global2 = array<bool, 31>();
    let var_2 = ~1u;
    var var_3 = Struct_4(func_1(_wgslsmith_div_f32(global0.c.x, 632f)).b, global0.b);
    var var_4 = global1.zyz;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1477f)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2157f, -934f))))));
}

