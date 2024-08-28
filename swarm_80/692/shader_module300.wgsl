struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 1u, 1u, 0u);

var<private> global3: vec2<f32> = vec2<f32>(937f, -211f);

var<private> global4: array<vec4<u32>, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x + arg_1), arg_1))));
    return var_0.a;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-800f * 2443f) - _wgslsmith_f_op_f32(-global3.x)))))));
    var var_1 = !vec2<bool>((abs(u_input.b.x) >> (~global2.x % 32u)) != -firstLeadingBit(u_input.b.x), true);
    let var_2 = firstTrailingBit(u_input.c);
    global0 = array<vec2<bool>, 28>();
    let var_3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global2.zyw, ~global2.wxz), 4294967295u, firstTrailingBit(18047u | u_input.d.x)), select(~vec3<u32>(var_2, var_2, global2.x), global2.xxy & global2.wzy, var_1.x | var_1.x) & global2.wzy), global2.zwz & vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.d, global2.xw), ~_wgslsmith_sub_u32(global2.x, 0u), 4294967295u), global2.zww);
    return !var_1.x;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = !select(select(vec3<bool>(451f <= arg_0.x, true, select(true, false, true)), vec3<bool>(true, true, true), true), !vec3<bool>(any(vec3<bool>(true, false, true)), all(vec4<bool>(false, false, false, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, false))));
    var var_1 = select(select(select(vec4<bool>(var_0.x, var_0.x, !var_0.x, true), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !var_0.x), vec4<bool>(79235u == global2.x, false, _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), global3.x)) < _wgslsmith_f_op_f32(global3.x * global3.x), var_0.x), !select(!vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true)), vec4<bool>(any(vec4<bool>(false, true, true, var_0.x)) && !func_3(), !(!(global2.x == global2.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec4<bool>(false, var_0.x, var_0.x, false)))), any(vec2<bool>(var_0.x, false))), any(vec4<bool>(any(vec3<bool>(false, var_0.x, var_0.x)), true, var_0.x, false)) || any(!(!global0[_wgslsmith_index_u32(17572u, 28u)])));
    var var_2 = vec3<bool>(true, func_3(), any(vec3<bool>(any(global0[_wgslsmith_index_u32(4294967295u, 28u)]) == any(vec3<bool>(true, false, var_0.x)), all(vec4<bool>(var_1.x, true, true, var_0.x)), global3.x != _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), 919f)))));
    global1 = array<vec2<i32>, 12>();
    var_1 = !(!select(vec4<bool>(func_3(), !var_0.x, all(vec4<bool>(false, false, false, var_2.x)), false), select(!vec4<bool>(false, var_1.x, false, var_0.x), select(vec4<bool>(false, true, true, true), vec4<bool>(var_2.x, false, var_1.x, false), var_2.x), var_0.x & var_2.x), vec4<bool>(all(global0[_wgslsmith_index_u32(global2.x, 28u)]), true, var_1.x || var_0.x, !var_1.x)));
    return ~0u;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> bool {
    global4 = array<vec4<u32>, 24>();
    global2 = global4[_wgslsmith_index_u32(arg_2, 24u)];
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~vec2<u32>(9525u, 8203u))));
    var var_1 = -abs(~vec2<i32>(~u_input.b.x, u_input.b.x));
    let var_2 = select(vec4<bool>(u_input.c >= 0u, true, any(!(!global0[_wgslsmith_index_u32(4294967295u, 28u)])), true), select(vec4<bool>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -609f)), Struct_1(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(7035u, 28u)], vec3<u32>(global2.x, 1u, 0u), 795u, vec4<i32>(50835i, 1i, -9335i, u_input.b.x)), func_1(vec2<f32>(279f, global3.x)), _wgslsmith_f_op_f32(-global3.x)), all(vec4<bool>(true, true, false, false)) && true, any(vec2<bool>(true, true)), true), vec4<bool>(!all(vec2<bool>(true, false)), true, false, all(!global0[_wgslsmith_index_u32(global2.x, 28u)])), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), true)), all(select(vec3<bool>(all(vec3<bool>(true, false, false)), false, true), vec3<bool>(true, all(vec2<bool>(true, false)), all(vec3<bool>(false, false, true))), false)));
    let var_3 = global3.x;
    global3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2055f, global3.x) * vec2<f32>(global3.x, global3.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, 1u, _wgslsmith_div_vec3_u32(vec3<u32>(min(var_0.x, _wgslsmith_div_u32(global2.x, global2.x)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, 1u, var_0.x), _wgslsmith_div_u32(var_0.x, global2.x)), ~_wgslsmith_add_u32(0u, global2.x)), ~vec3<u32>(countOneBits(u_input.c), max(1u, 29614u), u_input.c ^ 0u)), -2147483647i);
}

